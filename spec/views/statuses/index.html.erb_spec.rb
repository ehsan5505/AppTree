require 'rails_helper'

RSpec.describe "statuses/index", type: :view do
  before(:each) do
    assign(:statuses, [
      Status.create!(
        :user => "User",
        :comment => "MyText"
      ),
      Status.create!(
        :user => "User",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
