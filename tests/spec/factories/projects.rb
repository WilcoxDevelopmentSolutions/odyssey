FactoryGirl.define do
  factory :project_with_author, class: Project do
    name "Odyssey"
    
    association :author, factory: :user
  end
end