package blooddonationsystem

class Blood {
    String type
    Date collected_date
    String collection_type
    int quantiy
    static belongsTo = [doners:Donor,reservers:Reserved]

    static constraints = {
    }
}
