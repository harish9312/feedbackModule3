package feedback_database

class FeedbackController {
    def springSecurityService

    def index() {
        def currentUser = springSecurityService.currentUser?.username
        def feedbacks = Feedback.list()
        [feedbacks: feedbacks, currentUser: currentUser]

    }
}