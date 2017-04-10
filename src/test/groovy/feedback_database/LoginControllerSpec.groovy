package feedback_database

import grails.test.mixin.TestFor
import spock.lang.Specification
import grails.test.mixin.Mock
import feedback_database.LoginController
/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(LoginController)
@Mock(Feedback)
class LoginControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void 'test add new feedback if user is not logged in'(){

        when:
//        request.method='POST'
        params.loginCheck = 1
        controller.addFeedback()

        then:
        response.redirectUrl == '/login/index?loginCheck=1'
    }


    void 'test to redirect to index if user is not logged in'(){

        when:
        params.currentUser = 'hksoni'
        params.id = 12
        params.userChek=1
        controller.home()

        then:
        response.redirectUrl == '/login/index?loginCheck=1'

    }


    void 'test if feedback is not deleted successfully'(){

        when:
        params.currentUser = 'hksoni1'
        controller.deleteFeedback()

        then:
        response.redirectUrl == '/login/index'


    }

    void 'test do not go to update if user not logged in'(){

        given:
        params.currentUser = 'hksoni1'
        params.id = 1
        params.check=1


        when:
        controller.update()

        then:
        response.redirectUrl == '/login/index?userCheck=1'

    }

    void 'test save new feedback if correct values are passed'(){
        given:
        params.courseName = 'C++'
        params.instituteName = 'SSRC'
        params.trainerName = 'DAD'
        params.courseDuration= '4 Months'
        params.totalFees= '3322'
        params.fb= 'This is awesome'

        when:
        request.method ='POST'
        controller.saveFeedback()

        then:

        response.redirectUrl != '/login/home'
    }

    void 'test update data if correct values are passed'(){
        given:
        params.id = '2'
        params.courseName = 'C++'
        params.instituteName = 'SSRC'
        params.trainerName = 'DAD'
        params.courseDuration= '4 Months'
        params.totalFees= '3322'
        params.fb= 'This is awesome'

        when:
        controller.updateData()

        then:

        response.redirectUrl != '/login/home'
    }


}
