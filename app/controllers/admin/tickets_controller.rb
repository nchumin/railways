class Admin::TicketsController < Admin::BaseController
  before_action :set_ticket, only: [:show, :destroy, :edit, :update]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
    @users = User.all
    @trains = Train.all
    @stations = RailwayStation.all
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @users = User.all
    @trains = Train.all 
    @stations = RailwayStation.all # todo

    if @ticket.save
      redirect_to admin_tickets_path, notice: 'Билет успешно создан'
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to [:admin, @ticket], notice: 'Билет успешно обновлен.'
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: 'Билет удален.'
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:passenger_name, :passport_number, :start_station_id, :end_station_id, :train_id, :user_id)
  end

end
