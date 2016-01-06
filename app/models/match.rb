# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  job_id       :integer
#  recruiter_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Match < ActiveRecord::Base
  belongs_to :job
  belongs_to :recruiter
end
