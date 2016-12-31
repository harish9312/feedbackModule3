package feedback_database
import grails.converters.JSON
import uk.co.desirableobjects.oauth.scribe.OauthService
import grails.plugin.springsecurity.annotation.Secured

class LoginController {
    def springSecurityService
    String currentUser //to access in both the actions login and update
    String msg = "Please Login First"
    def feedback //defined here to store id for the user logged in
    FacebookLoginService facebookLoginService // Service class instance to call serviceMethod
    OauthService oauthService //to get the currently logged username
    def username

    def index() {
                    //view for Login
    }

    //Action to get the username form Facebook if login is successful

    def fbsuccess(){
        String sessionKey = oauthService.findSessionKeyForAccessToken('facebook')
        def token = session[sessionKey]
        def new1 =facebookLoginService.serviceMethod(token)
        def data = JSON.parse(new1)
        //
        currentUser = data.id
        if(currentUser){
            redirect(controller: 'login' , action: 'update')
        }
        else
            redirect(controller: 'login' , action: 'index')
    }

    //to be called when a user successfully logs in
    def getuser(){

        currentUser = springSecurityService.currentUser?.username
        redirect(controller: 'login' , action: 'update')

    }

    def update() {
        username = currentUser
        feedback = Feedback.findByUserName(username)

        if (feedback != null) {

            String courseName
            String instituteName
            String trainerName
            String courseDuration
            String totalFees
            String fb

            if (username != null) {
                feedback = Feedback.findByUserName(username)
                if (feedback != null) {
                    courseName = feedback.courseName
                    instituteName = feedback.instituteName
                    trainerName = feedback.trainerName
                    courseDuration = feedback.courseDuration
                    totalFees = feedback.totalFees
                    fb = feedback.feedback

                    def sendData = [courseName: courseName, instituteName: instituteName, trainerName: trainerName, courseDuration: courseDuration, totalFees: totalFees, feedback: fb]

                    [sendData: sendData]


                }//2nd If Close

            }//1st If close

            else{
                redirect(controller: 'login' , action: "index" , params:[msg:msg])

            }


        } else {
            redirect(controller: "login", action: "addFeedback")
        }
    }


    def updateData() {
        username = currentUser
        if(username!=null) {
            feedback = Feedback.findByUserName(username)
            feedback.courseName = params.courseName
            feedback.instituteName = params.instituteName
             feedback.trainerName = params.trainerName
            feedback.courseDuration = params.courseDuration
            feedback.totalFees = params.totalFees
            feedback.feedback = params.fb
            if (feedback.save()) {
                username = null
                println username
                redirect(controller: "feedback", action: "index")
            } else {
                redirect(controller: "login", action: "index")
            }
        }
        else
            redirect(controller: "login", action: "index", params:[msg:msg])
    }

    def deleteFeedback() {
        username = currentUser
        if(username!=null) {
            def del = Feedback.findByUserName(username)
            if (del.delete()) {
                render("Deleted")
            } else {
                redirect(controller: "login", action: "addFeedback")
            }
        }
        else
            redirect(action: 'index')
    }
    def addFeedback() {
        username = currentUser
        if(username!=null)
        {
            def loggedUser = [username: username]
            [loggedUser: loggedUser]
        }
        else
            redirect(action: 'index' , params: [msg:msg])
    }

}//Controller Close

