package feedback_database

import grails.transaction.Transactional

@Transactional
class GetDataService {
    def feedback

    def getData(String userName) {
        String username = userName
        String courseName
        String instituteName
        String trainerName
        String courseDuration
        String totalFees
        String fb

        if (username != null) {
            feedback = Feedback.findByUserName(username)
            if (feedback != null) {
                courseName = feedback.courseName
                instituteName = feedback.instituteName
                trainerName = feedback.trainerName
                courseDuration = feedback.courseDuration
                totalFees = feedback.totalFees
                fb = feedback.feedback

                def sendData = [
                        courseName    : courseName,
                        instituteName : instituteName,
                        trainerName   : trainerName,
                        courseDuration: courseDuration,
                        totalFees     : totalFees,
                        feedback      : fb
                ]

                return sendData
            }
        }
    }

    def update(String username,
               String courseName,
               String instituteName,
               String trainerName,
               String courseDuration,
               String totalFees,
               String fb){

        feedback = Feedback.findByUserName(username)
        feedback.courseName = courseName
        feedback.instituteName = instituteName
        feedback.trainerName = trainerName
        feedback.courseDuration = courseDuration
        feedback.totalFees = totalFees
        feedback.feedback = fb
        if (feedback.save()) {
            return true
        } else {
            return false
        }

    }

}