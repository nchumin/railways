class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  private

  def ticket_params
    params.require(:ticket).permit(:passenger_name, :passport_number, :start_station_id, :end_station_id, :train_id)
  end

end
