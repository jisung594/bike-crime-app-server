class IncidentsController < ApplicationController
  def index
    @incidents = Incident.all
    render json: @incidents
  end

  def create
    @incident = Incident.create(incident_params)
    render json: @incident
  end


  private

  def incident_params
    params.require(:incident).permit(
      :title,
      :description,
      :address,
      :occurred_at,
      :type_of,
      :image
    )
  end

  def find_incident
    @incident = Incident.find(params[:id])
  end

end
