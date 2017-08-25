require 'rails_helper'

RSpec.describe "stories/index", type: :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        :in_order_to => "MyText",
        :as => "As",
        :i_want_to => "MyText",
        :i_do => "MyText",
        :this_happens => "MyText",
        :importance => 2,
        :comments => "MyText",
        :dev_comments => "MyText",
        :difficulty => 3,
        :story_kind => 4,
        :author => 5
      ),
      Story.create!(
        :in_order_to => "MyText",
        :as => "As",
        :i_want_to => "MyText",
        :i_do => "MyText",
        :this_happens => "MyText",
        :importance => 2,
        :comments => "MyText",
        :dev_comments => "MyText",
        :difficulty => 3,
        :story_kind => 4,
        :author => 5
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "As".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
