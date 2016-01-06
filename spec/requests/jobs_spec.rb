# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  employer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe "Jobs", type: :request do
  describe "GET /jobs" do
    it "works! (now write some real specs)" do
      get jobs_path
      expect(response).to have_http_status(200)
    end
  end
end
