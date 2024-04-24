package blooddonationsystem

import com.BloodDonationSystem.Status

class BloodRecord {
    int quantity
    Status status
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasMany = [blood:Blood,patient:Patient]
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
