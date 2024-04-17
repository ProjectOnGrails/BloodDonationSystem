package blooddonationsystem

import User.Employee
import com.BloodDonationSystem.Gender
import com.BloodDonationSystem.Requestmap
import com.BloodDonationSystem.User

class BootStrap {

    def init = { servletContext ->
        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        def user = new User(
                username: "admin",
                password: "admin"
        )
        new Employee(name:"Smriti Guragain", age: 23, gender: Gender.FEMALE, join_date: new Date(), phone:"9825111243", email: "smritiguragain111@gmail.com", createdBy: "Smriti Guragain", user: user).save()
    }
    def destroy = {
    }
}
