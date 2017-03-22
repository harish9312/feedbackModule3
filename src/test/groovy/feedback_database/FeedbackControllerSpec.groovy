package feedback_database

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(FeedbackController)
class FeedbackControllerSpec extends Specification {

    void 'test index'(){
        when:
        def model = controller.index()

        then:
        model.fbCPP == Feedback.feedback
    }


}
