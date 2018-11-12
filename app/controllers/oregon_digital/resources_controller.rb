module OregonDigital

class ResourcesController < ApplicationController
  load_and_authorize_resource :exhibit, class: Spotlight::Exhibit
  before_action :build_resource
  def create
    if @resource.save_and_index
      flash[:notice] = "saved resource from #{resource_params[:url]}"
      redirect_to(spotlight.exhibit_resources_path(current_exhibit))
    else
      flash[:notice] = @resource.errors[:base]
      redirect_to(spotlight.exhibit_resources_path(current_exhibit))
    end
  end

  private

  def build_resource
    @resource = begin
      r = Resource.new(resource_params)
      r.exhibit = current_exhibit
      r
    end
  end

  def resource_params
    params.require(:oregon_digital_resource).permit(:url)
  end
end

end
