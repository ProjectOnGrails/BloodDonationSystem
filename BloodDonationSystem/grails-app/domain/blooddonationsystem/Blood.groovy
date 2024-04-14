package blooddonationsystem
import com.BloodDonationSystem.BloodGroup

class Blood {
    BloodGroup bloodGroup
    Date collected_date
    String collection_type
    int quantiy
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static belongsTo = [doners:Donor,record:BloodRecord]

    static constraints = {
    }
}
