require 'rails_helper'

RSpec.describe "stories/new", type: :view do
  before(:each) do
    assign(:story, Story.new(
      :in_order_to => "MyText",
      :as => "MyString",
      :i_want_to => "MyText",
      :i_do => "MyText",
      :this_happens => "MyText",
      :importance => 1,
      :comments => "MyText",
      :dev_comments => "MyText",
      :difficulty => 1,
      :story_kind => 1,
      :author => 1
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "textarea[name=?]", "story[in_order_to]"

      assert_select "input[name=?]", "story[as]"

      assert_select "textarea[name=?]", "story[i_want_to]"

      assert_select "textarea[name=?]", "story[i_do]"

      assert_select "textarea[name=?]", "story[this_happens]"

      assert_select "input[name=?]", "story[importance]"

      assert_select "textarea[name=?]", "story[comments]"

      assert_select "textarea[name=?]", "story[dev_comments]"

      assert_select "input[name=?]", "story[difficulty]"

      assert_select "input[name=?]", "story[story_kind]"

      assert_select "input[name=?]", "story[author]"
    end
  end
end
