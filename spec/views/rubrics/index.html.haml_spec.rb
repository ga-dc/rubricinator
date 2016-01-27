require 'rails_helper'

RSpec.describe "rubrics/index", type: :view do
  before(:each) do
    assign(:rubrics, [
      Rubric.create!(
        :name => "Name1"
      ),
      Rubric.create!(
        :name => "Name2"
      )
    ])
  end

  it "renders a list of rubrics" do
    render
    assert_select "tr>td", :text => /Name\d/, :count => 2
  end
end
