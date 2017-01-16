package feedback_database
import grails.plugin.springsecurity.annotation.Secured

class RegisterController {

    def springSecurityService
    def msg="Please Login Again"

    def username

    def index() {
        username=null
    }

    //to add a new user into the feedback database
    def addUser()
    {   //to print the msg when an error occurs
        def msg="Username not Available or Already Used"
        //to be used in the addFeedback action
        username = params.userName
        String password = params.password
        String fullname =  params.fullName
        def user = new User(username: username, password: password , fullname: fullname).save()
        def role = Role.findById(1)
        def instance = new UserRole(user: user, role: role)
        if(instance.save())
        {
            redirect(action: "addFeedback")
        }
        else
        {   flash.errmsg="Username already exist"
            redirect(action:"index")

        }
    }
    def addFeedback(){
        if(username!=null){
            //passing the username to the view of addFeedback so the username must be inserted in the User table
            def loggedUser = [username:username]
            [loggedUser:loggedUser]
        }
        else
            redirect(controller: 'login', action:"index", params:[msg:msg])
    }
    //save the feedback to the database and redirect to the feedback list
    def saveFeedback()
    {
        def saveFB = new Feedback(params)
        if(saveFB.save())
        {   username = null
            redirect(controller :"login" , action: "getuser")
        }

    }

}
