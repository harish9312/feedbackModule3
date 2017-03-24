package feedback_database

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(RegisterController)
class RegisterControllerSpec extends Specification {

    void 'test addUser'(){

    given:
        params.username='newuser'
        params.password='12341234'
        params.fullname = 'SoniHArish'

    when:
        request.method='POST'
        params.checkUser= 1
        controller.addUser()
    then:
         response.redirectUrl == '/login/index?checkUser=1' || response.redirectUrl == '/login/index'
    }

}
