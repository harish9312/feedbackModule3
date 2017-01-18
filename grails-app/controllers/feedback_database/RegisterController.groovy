package feedback_database

class RegisterController {

    def msg = "Please Login Again"
    def username
    GetDataService getDataService

    def index() {
    }

    //to add a new user into the feedback database
    def addUser() {

        username = params.userName
        String password = params.password
        String fullname = params.fullName
        def user = new User(username: username, password: password, fullname: fullname).save()
        def role = Role.findById(1)
        def instance = new UserRole(user: user, role: role)
        if (instance.save()) {
            redirect(action: "addFeedback")
        } else {
            flash.errmsg = "Username already exist"
            redirect(action: "index")

        }
    }

    def addFeedback() {
        if (username != null) {
            //passing the username to the view of addFeedback so the username must be inserted in the User table
            def loggedUser = [username: username]
            [loggedUser: loggedUser]
        } else
            redirect(controller: 'login', action: "index", params: [msg: msg])
    }

    //save the feedback to the database and redirect to the feedback list
    def saveFeedback() {
        def saveFB = new Feedback(params)
        if (saveFB.save()) {
            redirect(controller: "register", action: "home")
        }
    }

    def home() {
            //Calling Service Method
            def sendData = getDataService.getData(username)
        [sendData:sendData]
    }

    def editfeedback(){
        //Calling Service Method
        def sendData = getDataService.getData(username)
        [sendData:sendData]

    }
   def updateData(){
       //Calling Service Method
       def checkUpdate = getDataService.update(username,
               params.courseName,
               params.instituteName,
               params.trainerName,
               params.courseDuration,
               params.totalFees,
               params.fb)

       if(checkUpdate){
           redirect(action: 'home')

       }
       else
           redirect(controller: 'login', action: 'index', params:[msg:msg])
   }

    def deleteFeedback() {
        if(username!=null) {
            def del = Feedback.findByUserName(username)
            if (del.delete()) {
                redirect(controller: "login", action: "index", params:[msg:msg])

            } else {
                redirect(controller: "register", action: "addFeedback")
            }
        }
        else
            redirect(action: 'index')
    }
}//Controller Closed
