require 'rails_helper'

RSpec.describe "rubrics/show", type: :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
