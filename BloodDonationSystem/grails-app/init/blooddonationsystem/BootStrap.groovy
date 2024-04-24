package blooddonationsystem

import User.Employee
import com.BloodDonationSystem.Gender
import com.BloodDonationSystem.Requestmap
import com.BloodDonationSystem.Role
import com.BloodDonationSystem.User
import com.BloodDonationSystem.UserRole

class BootStrap {

    def init = { servletContext ->
        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*','/patient/**','/bloodRecord/**']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()

        }
        new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()

        def user = new User(
                username: "admin",
                password: "admin"
        )
        def role = new Role(
                authority: "ROLE_ADMIN"
        ).save()
        new Employee(name:"Smriti Guragain", age: 23, gender: Gender.FEMALE, join_date: new Date(), phone:"9825111243", email: "smritiguragain111@gmail.com", createdBy: "Smriti Guragain", user: user).save()
        new UserRole(
                user: user,
                role: role
        ).save()
    }
    def destroy = {
    }
}
