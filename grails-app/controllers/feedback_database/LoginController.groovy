package feedback_database
import grails.converters.JSON
import uk.co.desirableobjects.oauth.scribe.OauthService

class LoginController {

    def springSecurityService
    String currentUser //to access in both the actions login and update
    def feedback //defined here to store id for the user logged in
    FacebookLoginService facebookLoginService // Service class instance to call serviceMethod
    OauthService oauthService //to get the currently logged username
    GetDataService getDataService
    def username
    def id
    def index() {
        //Session Management
        username=null
        currentUser = null
    }


    //Action to get the username from Facebook if login is successful
    def fbsuccess(){
        prinln(0)
        String sessionKey = oauthService.findSessionKeyForAccessToken('facebook')
        println(1)
        def token = session[sessionKey]
        println(2)
        def getUserID = facebookLoginService.serviceMethod(token)
        println(3)
        def data = JSON.parse(getUserID)
        currentUser = data.id
        if(currentUser){
            println("HEllos")
            redirect(controller: 'login' , action: 'home')
        }
        else
            redirect(controller: 'login' , action: 'index')
    }//fbsuccess closed


    //to be called when a user successfully logs in
    def getuser() {
        currentUser = springSecurityService.currentUser?.username
        redirect(controller: 'login', action: 'home')
    }
    //Homepage of Feedback database
    def home() {
        username = currentUser
        if(username!=null) {
            def checkFeedback = Feedback.findByUserName(username)
            if(checkFeedback) {
                def sendData = Feedback.executeQuery("from Feedback where userName = '" + username + "' order by id desc ")
                [sendData: sendData, userName: username]
            }
            else
                redirect(controller: 'login' , action: 'addFeedback')
        }
        else
            redirect(controller: 'login' , action: 'index' , params: [loginCheck: 1])
        }


    def update() {
        username = currentUser
        id = params.id
           if(username!=null) {
           def check = Feedback.findById(id)
           if (username == check.userName) {
               def sendData = getDataService.getData(id)
               if (username != null) {
                   [sendData: sendData]
               } else
                   redirect(controller: 'login', action: 'index', params: [loginCheck: 1])
           }
       }
        else
            redirect(controller: 'login', action: 'index', params: [userCheck: 1])

    }

    //Called when user click on Update
    def updateData() {
        if(request.method=='POST') {
            def checkUpdate = getDataService.update(id,
                    params.courseName,
                    params.instituteName,
                    params.trainerName,
                    params.courseDuration,
                    params.totalFees,
                    params.fb,
                    params.rating)

            if (checkUpdate) {
                redirect(controller: 'login', action: 'home')
            }
        }
        else
            redirect(controller: "login", action: "index", params:[loginCheck:1])
    }

    //Deletes the Feedback
    def deleteFeedback() {
        username = currentUser
        if(username!=null) {
            def del = Feedback.findByUserName(username)
            if (del.delete()) {
                redirect(controller: "login", action: "index", params:[loginCheck: 1])

            } else {
                redirect(controller: "login", action: "home")
            }
        }
        else
            redirect(controller: 'login',  action: 'index')
    }

    //Adds New Feedback
    def addFeedback() {
        username = currentUser
        if (username != null) {

        }
        else
            redirect(action: 'index', params: [loginCheck: 1])
    }
    //Saving the new Feedback Added
    def saveFeedback() {
        if (request.method == 'POST') {
            def saveFB = new Feedback(
                    userName: username,
                    courseName: params.courseName,
                    courseDuration: params.courseDuration,
                    trainerName: params.trainerName,
                    instituteName: params.instituteName,
                    feedback: params.feedback,
                    totalFees: params.totalFees,
                    rating: params.rating

            )
            if (saveFB.save()) {
                redirect(controller: "login", action: "home")
            } else
                render "Not Saved"
        }
        else
            redirect(controller: "login", action: "index")

    }

}//Controller Close
