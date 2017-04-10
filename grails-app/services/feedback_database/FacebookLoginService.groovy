package feedback_database

import grails.transaction.Transactional
import org.scribe.model.Token
import uk.co.desirableobjects.oauth.scribe.OauthService
@Transactional
class FacebookLoginService {

    OauthService oauthService
    def serviceMethod(Token facebookAccessToken) {
        def generatedToken = oauthService.getFacebookResource(facebookAccessToken, 'https://graph.facebook.com/v2.3/me').body
        return generatedToken
    }
}
