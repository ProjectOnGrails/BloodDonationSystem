package blooddonationsystem

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
        new User(username: "Smriti",password: "admin").save()
    }
    def destroy = {
    }
}
