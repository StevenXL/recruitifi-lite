# == Schema Information
#
# Table name: recruiters
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe "Recruiters", type: :request do
  describe "GET /recruiters" do
    it "works! (now write some real specs)" do
      get recruiters_path
      expect(response).to have_http_status(200)
    end
  end
end
