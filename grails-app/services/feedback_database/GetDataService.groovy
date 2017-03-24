package feedback_database

import grails.transaction.Transactional

@Transactional
class GetDataService {
    def feedback

    def getData(String id) {
        String courseName
        String instituteName
        String trainerName
        String courseDuration
        String totalFees
        String fb
        int rating


            feedback = Feedback.findById(id)
            if (feedback != null) {
                courseName = feedback.courseName
                instituteName = feedback.instituteName
                trainerName = feedback.trainerName
                courseDuration = feedback.courseDuration
                totalFees = feedback.totalFees
                rating = feedback.rating
                fb = feedback.feedback

                def sendData = [
                        courseName    : courseName,
                        instituteName : instituteName,
                        trainerName   : trainerName,
                        courseDuration: courseDuration,
                        totalFees     : totalFees,
                        rating        : rating,
                        feedback      : fb
                ]

                return sendData
            }
        }


    def update(String id,
               String courseName,
               String instituteName,
               String trainerName,
               String courseDuration,
               String totalFees,
               String fb){

        feedback = Feedback.findById(id)
        feedback.courseName = courseName
        feedback.instituteName = instituteName
        feedback.trainerName = trainerName
        feedback.courseDuration = courseDuration
        feedback.totalFees = totalFees
        feedback.feedback = fb
        println(feedback.feedback)
        if (feedback.save()) {
            return true
        } else {
            return false
        }

    }

}