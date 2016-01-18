require 'rails_helper'

RSpec.describe "rubrics/edit", type: :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit rubric form" do
    render

    assert_select "form[action=?][method=?]", rubric_path(@rubric), "post" do

      assert_select "input#rubric_name[name=?]", "rubric[name]"
    end
  end
end
