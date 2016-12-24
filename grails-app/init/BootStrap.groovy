class BootStrap {

    def init = { servletContext ->
        def role =  new feedback_database.Role(authority:'ROLE_USER', enabled:'true')
        role.save()

    }
    def destroy = {
    }
}
