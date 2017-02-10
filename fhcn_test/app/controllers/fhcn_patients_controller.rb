class FhcnPatientsController < ApplicationController
 

  def index
    @fhcn_patients = FhcnPatient.all
  end

  def show
  end

  def new
    @fhcn_patient = FhcnPatient.new
  end


  def edit
  end

  def create
    @fhcn_patient = FhcnPatient.new(fhcn_patient_params)
  end

  def update
    id = params[:id]
    t_pat = params[:fhcn_patient]

    @my_patient = FhcnPatient.where(id: id).first

    @my_patient.pt_q1 = t_pat[:pt_q1]
    @my_patient.pt_q2 = t_pat[:pt_q2]
    @my_patient.pt_q3 = t_pat[:pt_q3]

    if @my_patient.save!
      puts "SUCCESS"
    else
      puts "FAILED TO SAVE?!"
    end
    puts "PLEASE UPDATE"

    redirect_to controller: 'static_pages', action: 'fhcn_test', search: id 
  end

  # DELETE /fhcn_patients/1
  # DELETE /fhcn_patients/1.json
  def destroy
    @fhcn_patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fhcn_patient
      @fhcn_patient = FhcnPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fhcn_patient_params
      params.fetch(:fhcn_patient, {})
    end
end
