class BusinessEventsController < ApplicationController

  def create
    @clientinfo = Clientinfo.find(params[:clientinfo_id])
    @business_event = @clientinfo.business_events.create(business_event_params)
    redirect_to clientinfo_path(@clientinfo)
  end
  
  private
    def business_event_params
      params.require(:business_event).permit(:event, :shares)
    end

end
