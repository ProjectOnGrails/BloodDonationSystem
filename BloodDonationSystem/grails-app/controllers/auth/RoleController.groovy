package auth
import com.BloodDonationSystem.Role
import grails.gorm.transactions.Transactional


class RoleController {

    def index() {
        def roles = Role.list()
        [roles: roles]
    }

    def save() {
        try {

            Role role = new Role(params)
            if (role.save()) {
                flash.message = "Data saved successfully"

            } else {
                flash.message = "Data cannot be saved"
            }
            redirect(action: "index")
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
    }

    @Transactional
    def delete(Long id) {
        try {
            def role = Role.get(id)
            if (role) {
                role.delete()
                flash.message = "Role Deleted Successfully"
            } else {
                flash.message = "Role not found"
            }
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
        redirect(action: "index")

    }

    @Transactional
    def update() {
        try {
            def param1 = params.param1
            def param2 = params.param2
            Role role = Role.get(param1)
            if (role) {
                role.authority = param2
                role.save()
                flash.message = "Role updated successfully."
                redirect(action: "index")
            } else {
                flash.message = "Role update failed. Role not found."
                redirect(action: "index")
            }
        }
        catch (e) {
            flash.message = "Error while updating role: $e.message"
            redirect(action: "index")
        }
    }
}