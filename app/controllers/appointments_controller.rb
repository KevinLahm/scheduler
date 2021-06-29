class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  def index
    # @appointments = current_user.appointments.all if current_user
    @pagy, @appointments = pagy(current_user.appointments.all.order('created_at ASC'), items: 4) if current_user
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      flash[:success] =  "Appointment Booked! We'll Get To You Soon"
      redirect_to '/'
    else
      flash[:error] =  "Appointment Not Booked! Check If You Provided Wrong Input!"
      redirect_to '/appointments'
    end
  end

  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy
    flash[:success] =  'Appointment Successfully Erased!'
    redirect_to '/appointments/#myappointments'
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:booking_time, :user_id, :doctor_id)
    end
end
