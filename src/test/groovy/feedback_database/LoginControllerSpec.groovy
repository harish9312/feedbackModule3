package feedback_database

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(LoginController)
class LoginControllerSpec extends Specification {

    void 'test addFeedback'(){

        when:
//        request.method='POST'
        params.loginCheck = 1
        controller.addFeedback()

        then:
        response.redirectUrl == '/login/index?loginCheck=1'
    }
}
