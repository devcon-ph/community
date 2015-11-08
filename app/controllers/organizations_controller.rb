class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all

    respond_to do |format|
      format.json { render json: @organizations.map(&:name).to_json }
    end
  end
end
