package blooddonationsystem

class Donor {
    String name
    String bloodgroup
    Date last_time_donated
    String address
    int age
    String gender
    String phn
    String email
    static hasOne = [blood:Blood]
    static constraints = {
    }
}
