require 'rails_helper'

RSpec.describe "statuses/show", type: :view do
  before(:each) do
    @status = assign(:status, Status.create!(
      :user => "User",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/MyText/)
  end
end
