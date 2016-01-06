require 'rails_helper'

RSpec.describe "recruiters/new", type: :view do
  before(:each) do
    assign(:recruiter, Recruiter.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new recruiter form" do
    render

    assert_select "form[action=?][method=?]", recruiters_path, "post" do

      assert_select "input#recruiter_first_name[name=?]", "recruiter[first_name]"

      assert_select "input#recruiter_last_name[name=?]", "recruiter[last_name]"

      assert_select "input#recruiter_email[name=?]", "recruiter[email]"
    end
  end
end
