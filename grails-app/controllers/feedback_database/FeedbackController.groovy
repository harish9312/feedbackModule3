//Feedback Display Controller
package feedback_database
class FeedbackController {
    def springSecurityService
    def index() {
        //Using Current user to access the login state on feedback display page
        def currentUser = springSecurityService.currentUser?.username
        def feedbacks = Feedback.executeQuery('from Feedback order by id desc')
        [feedbacks: feedbacks, currentUser: currentUser]

    }
}