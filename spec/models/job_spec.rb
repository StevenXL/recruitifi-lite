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

RSpec.describe Job, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
