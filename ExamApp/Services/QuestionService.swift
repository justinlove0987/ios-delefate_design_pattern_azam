//
//  QuestionService.swift
//  ExamApp
//
//  Created by justin on 2022/5/5.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class QuestionnService {
    
    private var questions = [Question]()
    
    func getAll() -> [Question] {
        
        return questions
        
//        let questions = [Question(text: "Is Earth Round", point: 10, isCorrect: true),
//                         Question(text: "Is 2+2 = 4", point: 10, isCorrect: true),
//                         Question(text: "Is 2*10 = 100", point: 10, isCorrect: false)
//        ]
//
//        return questions
        
        
    }
    
    func add(question: Question) {
        self.questions.append(question)
    }
    
    
}
