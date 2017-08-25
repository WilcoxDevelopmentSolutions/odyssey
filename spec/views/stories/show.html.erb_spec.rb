require 'rails_helper'

RSpec.describe "stories/show", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/As/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
