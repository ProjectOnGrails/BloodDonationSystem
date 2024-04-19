package auth

import com.BloodDonationSystem.Role
import grails.gorm.transactions.Transactional


class RoleController {

    def index()
    {
        def roles = Role.list()
        [roles:roles]
    }
    def save()
    {
        try {

            Role role = new Role(params)
            if (role.save()) {
                flash.message = "Data saved successfully"

            } else {
                flash.message = "Data cannot be saved"
            }
            redirect(action: "index")
        }
        catch (Exception e)
        {
            println e;
            flash.message="Cannot connect to databaase"
        }
    }
    @Transactional
    def delete(Long id)
    {
        try{
            def role = Role.get(id)
            if(role)
            {
                role.delete()
                flash.message="Role Deleted Successfully"
            }
            else
            {
                flash.message = "Role not found"
            }
        }
        catch (Exception e)
        {
            println e;
            flash.message="Cannot connect to databaase"
        }
        redirect(action: "index")

    }
}
