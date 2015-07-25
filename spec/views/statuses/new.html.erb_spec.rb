require 'rails_helper'

RSpec.describe "statuses/new", type: :view do
  before(:each) do
    assign(:status, Status.new(
      :user => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders new status form" do
    render

    assert_select "form[action=?][method=?]", statuses_path, "post" do

      assert_select "input#status_user[name=?]", "status[user]"

      assert_select "textarea#status_comment[name=?]", "status[comment]"
    end
  end
end
