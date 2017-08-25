FactoryGirl.define do
  factory :story do
    in_order_to "MyText"
    as "MyString"
    i_want_to "MyText"
    i_do "MyText"
    this_happens "MyText"
    importance 1
    comments "MyText"
    dev_comments "MyText"
    difficulty 1
    story_kind 1
    author 1
  end
end
