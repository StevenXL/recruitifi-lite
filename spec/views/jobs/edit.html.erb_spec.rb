require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :description => "MyString",
      :employer => nil
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_description[name=?]", "job[description]"

      assert_select "input#job_employer_id[name=?]", "job[employer_id]"
    end
  end
end
