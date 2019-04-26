require 'pry'
class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    find_doctor
  end

  def new
    @doctor = Doctor.new
  end

  def edit
    find_doctor
  end

  def update
    find_doctor
    @doctor.update(doctor_params)
    if @doctor.save
      redirect_to doctors_url
    else
      @errors = @doctor.errors.full_messages
      render 'edit'
    end
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctors_url
    else
      @errors = @doctor.errors.full_messages
      render 'new'
    end
  end

  def destroy
    doctor = Doctor.find(params[:id])
    doctor.destroy
    redirect_to doctors_path
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :speciality)
  end
end
