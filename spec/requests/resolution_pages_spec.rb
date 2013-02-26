require 'spec_helper'

describe "Resolution Pages" do
  subject { page }

  describe "new resolution page" do
    before { visit new_resolution_path }

    it { should have_selector('h1', text: 'New Resolution')}

    describe "with invalid information" do
      it "should not create a resolution" do
        expect { click_button "Create Resolution" }.not_to change(Resolution, :count)
      end
    end

    describe "with valid info" do
      let(:resolution) { create(:resolution) }
      before do
      fill_in "Title", with: resolution.title
      fill_in "Body", with: resolution.body
      end
      it "should create a new resolution" do
        expect { click_button "Create Resolution" }.to change(Resolution, :count).by(1)
      end
    end

    describe "show resolution page" do
      let(:resolution) { create(:resolution) }
      before { visit resolution_path(resolution)}
      it { should have_selector('h1', text: resolution.title)}
    end
  end
end