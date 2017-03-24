package feedback_database

class RegisterController {

    def username

    def index() {
    }

    //to add a new user into the feedback database
    def addUser() {
        if (request.method == 'POST') {
            username = params.userName
            String password = params.password
            String fullname = params.fullName
            def user = new User(username: username, password: password, fullname: fullname).save()
            def role = Role.findById(1)
            def instance = new UserRole(user: user, role: role)
            if (instance.save()) {
                redirect(controller: 'login', action: 'index', params: [checkUser: 1])
            } else {
                flash.errmsg = "Username already exist"
                redirect(controller: 'login', action: "index")

            }
        }
        else
            redirect(controller: 'login', action: "index")


    }
}//Controller Closed
