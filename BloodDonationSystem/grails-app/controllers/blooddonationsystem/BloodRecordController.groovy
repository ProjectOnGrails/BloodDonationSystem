package blooddonationsystem

import com.BloodDonationSystem.Role
import grails.gorm.transactions.Transactional

class BloodRecordController {
    def springSecurityService
    def index()
    {
        def record = BloodRecord.list()
        [record: record]
    }

    def save()
    {
        try {
            BloodRecord record = new BloodRecord(params)
            def user = springSecurityService.currentUser
            record.createdBy = user
            if (record.save()) {
                flash.message = "Data saved successfully"
                redirect(action: "index")
            } else {
                flash.message = "Data cannot be saved"
                redirect(action: "index")
            }
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase :${e.message}"
            redirect(action: "index")
        }
    }

    @Transactional
    def delete(Long id) {
        try {
            def record = BloodRecord.get(id)
            if (record) {
                record.delete()
                flash.message = "Record Deleted Successfully"
            } else {
                flash.message = "Record not found"
            }
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
        redirect(action: "index")

    }

    def edit()
    {
        def id = params.id
        BloodRecord recordInstance = BloodRecord.findById(id)
        render(template: "edit",model: [data:recordInstance])
    }

    @Transactional
    def update() {
        def recordId = params.id
        BloodRecord recordInstance = BloodRecord.findById(recordId)
        if(recordInstance){
            try {
                recordInstance.properties = params
                if(recordInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message')}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating record."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Record update failed: ${e.message}"
                redirect(action: "index")
            }
        }
        else
        {
            flash.error = "${message(code: 'default.not.found.message')}"
            redirect(action: "index")
        }
    }

}
