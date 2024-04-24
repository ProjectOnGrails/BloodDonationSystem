package blooddonationsystem

import com.BloodDonationSystem.Role

class PatientController {

    def index()
    {
        def patient = Patient.list()
        [patient: patient]
    }

    def save()
    {
        try {

            Patient patient = new Patient(params)
            if (patient.save()) {
                flash.message = "Data saved successfully"

            } else {
                flash.message = "Data cannot be saved"
            }
            redirect(action: "index")
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
    }
}
