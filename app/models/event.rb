class Event < ActiveRecord::Base
  belongs_to :organization
  enum status: [:pending, :approved, :rejected]
  attr_accessor :organization_name, :start_date, :end_date, :start_time, :end_time

  validates :title, :description, :start_at, :organization_name, presence: true
end
