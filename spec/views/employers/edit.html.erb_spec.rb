require 'rails_helper'

RSpec.describe "employers/edit", type: :view do
  before(:each) do
    @employer = assign(:employer, Employer.create!(
      :name => "MyString",
      :email => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit employer form" do
    render

    assert_select "form[action=?][method=?]", employer_path(@employer), "post" do

      assert_select "input#employer_name[name=?]", "employer[name]"

      assert_select "input#employer_email[name=?]", "employer[email]"

      assert_select "textarea#employer_description[name=?]", "employer[description]"
    end
  end
end
