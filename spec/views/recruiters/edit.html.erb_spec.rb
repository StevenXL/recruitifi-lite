require 'rails_helper'

RSpec.describe "recruiters/edit", type: :view do
  before(:each) do
    @recruiter = assign(:recruiter, Recruiter.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit recruiter form" do
    render

    assert_select "form[action=?][method=?]", recruiter_path(@recruiter), "post" do

      assert_select "input#recruiter_first_name[name=?]", "recruiter[first_name]"

      assert_select "input#recruiter_last_name[name=?]", "recruiter[last_name]"

      assert_select "input#recruiter_email[name=?]", "recruiter[email]"
    end
  end
end
