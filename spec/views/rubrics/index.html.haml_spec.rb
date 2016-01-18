require 'rails_helper'

RSpec.describe "rubrics/index", type: :view do
  before(:each) do
    assign(:rubrics, [
      Rubric.create!(
        :name => "Name"
      ),
      Rubric.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of rubrics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
