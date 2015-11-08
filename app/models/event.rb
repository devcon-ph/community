class Event < ActiveRecord::Base
  belongs_to :organization
  enum status: [:pending, :approved, :rejected]
  attr_accessor :start_date, :end_date, :start_time, :end_time

  validates :title, :description, :start_at, presence: true

  def organization_name
    organization.try(:name)
  end

  def organization_name=(name)
    self.organization = Organization.where(name: name).first_or_create if name.present?
  end
end
