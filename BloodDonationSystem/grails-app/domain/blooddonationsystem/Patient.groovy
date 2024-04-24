package blooddonationsystem

import com.BloodDonationSystem.BloodGroup
import com.BloodDonationSystem.Gender

class Patient {
    String name
    BloodGroup bloodgroup
    int quantity_req
    int age
    Gender gender
    String hospitalname
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static belongsTo = [record:BloodRecord]
    static constraints = {
        createdBy nullable: true
        updatedBy nullable: true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }
}
