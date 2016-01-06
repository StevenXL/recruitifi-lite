require 'rails_helper'

RSpec.describe "employers/index", type: :view do
  before(:each) do
    assign(:employers, [
      Employer.create!(
        :name => "Name",
        :email => "Email",
        :description => "MyText"
      ),
      Employer.create!(
        :name => "Name",
        :email => "Email",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of employers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
