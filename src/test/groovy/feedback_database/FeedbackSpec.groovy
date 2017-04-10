package feedback_database

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Feedback)
class FeedbackSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test if value of rating is false"(){

        expect:
        new Feedback(rating: userRating).validate(['userRating'])!= mustBeValid

        where:
         userRating | mustBeValid
           ''   | false
            -5  | false
            -4  | false
            -3  | false
            -2  | false
            -1  | false
    }

    void "test if value of rating is true"(){

        expect:
        new Feedback(rating: userRating).validate(['userRating'])== mustBeValid

        where:
        userRating | mustBeValid
        1  | true
        2  | true
        3  | true
        4  | true
        5  | true
    }

    void "test for Feedback Domain Class"(){
        when:

        Feedback feedback = new Feedback([
                courseName : "Java",
                instituteName : "SSTC",
                trainerName : "Harish",
                courseDuration : "1 Month",
                totalFees : 1999,
                feedback : "This is Test",
                userName : "hksoni",
                rating : 4
        ])

        then:
        feedback.courseName == "Java"
    }

}
