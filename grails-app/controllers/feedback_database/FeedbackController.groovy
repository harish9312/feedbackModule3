//Feedback Display Controller
package feedback_database
class FeedbackController {
    def springSecurityService
    def index() {
        //Using Current user to access the login state on feedback display page
        def currentUser = springSecurityService.currentUser?.username
        def fbCPP = Feedback.executeQuery("from Feedback where courseName = 'C++' order by id desc ")
        def fbJava = Feedback.executeQuery("from Feedback where courseName = 'Java' order by id desc ")
        def fbPython = Feedback.executeQuery("from Feedback where courseName = 'Python' order by id desc")
        def fbGrails = Feedback.executeQuery("from Feedback where courseName = 'Grails' order by id desc ")


        //       println(fbCourse + feedbacks)
        [fbCPP: fbCPP,
         fbJava:fbJava,
         fbPython:fbPython,
         fbGrails:fbGrails,
         currentUser: currentUser]

    }


}