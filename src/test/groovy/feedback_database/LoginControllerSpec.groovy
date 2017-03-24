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

    void 'test getuser'(){

        when:
        params.currentUser = 'hksoni'
        params.username = 'hksoni'
        controller.getuser()

        then:
        response.redirectUrl == '/login/home'

    }

    void 'test home'(){

        when:
        params.currentUser = 'hksoni'
        params.id = 12
        params.userChek=1
        controller.home()

        then:
        response.redirectUrl == '/login/index?loginCheck=1'

    }


    void 'test deleteFeedback'(){

        when:
        params.currentUser = 'hksoni1'
        controller.deleteFeedback()

        then:
        response.redirectUrl == '/login/index'


    }

    void 'test updateFailed'(){

        when:
        params.currentUser = 'hksoni1'
        params.id = 12
        params.userChek=1
        controller.update()

        then:
        response.redirectUrl == '/login/index?userCheck=1'

    }
}
