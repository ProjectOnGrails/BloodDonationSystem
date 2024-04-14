package blooddonationsystem

import com.BloodDonationSystem.Status

class BloodRecord {
    int blood_quantity
    Status status
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasMany = [blood:Blood,patient:Patient]
    static constraints = {

    }
}
