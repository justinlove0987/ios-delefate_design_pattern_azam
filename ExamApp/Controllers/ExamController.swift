//
//  ExamController.swift
//  MVC-Exam-Questions
//
//  Created by Mohammad Azam on 9/3/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class ExamController :UIViewController {
    
    @IBOutlet weak var questionView :QuestionView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionView.questionTextLabel.text = "Is Earth round?"
        
    }
}
