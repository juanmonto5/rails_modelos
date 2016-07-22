class Job < ActiveRecord::Base
  belongs_to :person
  validates :title, :company, presence: true
  has_one :salary_range
end
