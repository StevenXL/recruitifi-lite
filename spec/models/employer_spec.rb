# == Schema Information
#
# Table name: employers
#
#  id          :integer          not null, primary key
#  name        :string
#  email       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Employer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end