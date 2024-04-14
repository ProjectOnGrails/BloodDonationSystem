package blooddonationsystem

class Patient {
    String name
    String blood_group
    int quantity_req
    String hospitalname
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static belongsTo = [record:BloodRecord]
    static constraints = {
    }
}
