package blooddonationsystem

class Reserved {
    int blood_quantity
    static hasMany = [blood:Blood,patient:Patient]
    static constraints = {
    }
}
