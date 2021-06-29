class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @pagy, @appointments = pagy(current_user.appointments.all.order('created_at ASC'), items: 4) if current_user
    @doctors = Doctor.all
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
