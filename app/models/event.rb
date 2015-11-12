class Event < ActiveRecord::Base
  extend TimeSplitter::Accessors

  belongs_to :organization
  enum status: [:pending, :approved, :rejected]
  split_accessor :start_at, :end_at, date_format: '%m/%d/%Y', time_format: '%I:%M %p'

  validates :title, :description, :start_at, presence: true

  def organization_name
    organization.try(:name)
  end

  def organization_name=(name)
    self.organization = Organization.where(name: name).first_or_create if name.present?
  end
end
