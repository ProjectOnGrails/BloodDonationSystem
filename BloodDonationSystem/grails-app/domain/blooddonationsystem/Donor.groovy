package blooddonationsystem
import com.BloodDonationSystem.BloodGroup
import com.BloodDonationSystem.Gender

class Donor {
    String name
    BloodGroup bloodgroup
    Date last_time_donated
    String address
    int age
    Gender gender
    String phn
    String email
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [blood:Blood]
    static constraints = {
    }
}
