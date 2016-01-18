require 'rails_helper'

RSpec.describe "rubrics/new", type: :view do
  before(:each) do
    assign(:rubric, Rubric.new(
      :name => "MyString"
    ))
  end

  it "renders new rubric form" do
    render

    assert_select "form[action=?][method=?]", rubrics_path, "post" do

      assert_select "input#rubric_name[name=?]", "rubric[name]"
    end
  end
end
