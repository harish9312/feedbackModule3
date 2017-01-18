package feedback_database
import grails.converters.JSON
import uk.co.desirableobjects.oauth.scribe.OauthService

class LoginController {

    def springSecurityService
    String currentUser //to access in both the actions login and update
    String msg = "Please Login First"
    def feedback //defined here to store id for the user logged in
    FacebookLoginService facebookLoginService // Service class instance to call serviceMethod
    OauthService oauthService //to get the currently logged username
    GetDataService getDataService
    def username

    def index() {
        //Session Management
        username=null
        currentUser = null
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
            redirect(controller: 'login' , action: 'home')
        }
        else
            redirect(controller: 'login' , action: 'index')
    }//fbsuccess closed


    //to be called when a user successfully logs in
    def getuser(){
        currentUser = springSecurityService.currentUser?.username
        redirect(controller: 'login' , action: 'home')
    }

    //Homepage of Feedback database
    def home() {
        username = currentUser
        feedback = Feedback.findByUserName(username)
        if(feedback!=null) {
            username = currentUser
            def sendData = getDataService.getData(username)
            [sendData: sendData]
        }
        else
            redirect(controller: 'login' , action: 'addFeedback')


        }

    //update action to update the feedback for the user
    def update() {
        username = currentUser
        if(username!=null) {
            def sendData = getDataService.getData(username)
            [sendData: sendData]
        }
        else
            redirect(controller: 'login' , action: 'index',params:[msg:msg])

    }

    //Called when user click on Update
    def updateData() {
        def checkUpdate = getDataService.update(username,
                params.courseName,
                params.instituteName,
                params.trainerName,
                params.courseDuration,
                params.totalFees,
                params.fb)

        if(checkUpdate) {
            redirect(controller: 'login', action: 'home')
        }
        else
            redirect(controller: "login", action: "index", params:[msg:msg])
    }

    //Deletes the Feedback
    def deleteFeedback() {
        username = currentUser
        if(username!=null) {
            def del = Feedback.findByUserName(username)
            if (del.delete()) {
                redirect(controller: "login", action: "index", params:[msg:msg])

            } else {
                redirect(controller: "login", action: "addFeedback")
            }
        }
        else
            redirect(action: 'index')
    }

    //Adds New Feedback
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

    //Saving the new Feedback Added
    def saveFeedback() {

        def saveFB = new Feedback(params)
        if (saveFB.save()) {
            redirect(controller: "login", action: "home")
        }
    }

}//Controller Close
