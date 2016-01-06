# == Schema Information
#
# Table name: questions
#
#  id           :integer          not null, primary key
#  body         :text             not null
#  job_id       :integer
#  recruiter_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :job
  belongs_to :recruiter
  validates :body, presence: true, length: {minimum: 5}
  validates :job, presence: true
  validates :recruiter, presence: true
end
