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

class Recruiter < ActiveRecord::Base
  has_many :matches
  has_many :jobs, through: :matches

  def full_name
    @full_name ||= "#{first_name} #{last_name}"
  end

  def name
    self.full_name
  end
end
