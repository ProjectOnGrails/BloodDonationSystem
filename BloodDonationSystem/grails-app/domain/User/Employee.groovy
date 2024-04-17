package User

import com.BloodDonationSystem.Gender
import com.BloodDonationSystem.User

class Employee {
    String name
    int age
    Gender gender
    Date join_date
    String phone
    String email
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [user: User]
    static constraints = {
        lastUpdated nullable: true
        updatedBy nullable:  true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }
}
