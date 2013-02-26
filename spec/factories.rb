FactoryGirl.define do
  
  factory :resolution do
    title "Less Nudies"
    body "Infinite nudity is way too free.  Finite nudity for everyone!"
  end

  factory :member do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@gmail.com" }
  end
end