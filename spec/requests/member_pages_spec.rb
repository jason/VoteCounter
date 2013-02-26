require 'spec_helper'

describe "MemberPages" do
  subject { page }
  describe "add member page" do
    before { visit new_member_path }
    it { should have_selector('h1', text: 'Add Member') }
    it { should have_selector('title', text: full_title('Add Member'))}
  
    describe "with invalid information" do
      it "should not add a new member" do
        expect { click_button "Create Member" }.not_to change(Member, :count)
        
      end 
    end
    describe "with valid information" do
      let(:member) { build(:member) }
      before do
        fill_in "Name", with: member.name
        fill_in "Email", with: member.email
      end
      it "should add a new member" do
        expect { click_button "Create Member" ; puts page.html}.to change(Member, :count).by(1)
      end
    end
  end
  describe "show member page" do
    let(:member) { create(:member) }
    before { visit member_path(member)}
    it { should have_selector('h1', text: member.name)}
  end
  describe "show all members page" do
    let(:member) { create(:member) }
    before { visit members_path}
    it { should have_selector('h1', text: "All Members")}
  end
end