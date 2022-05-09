//
//  AddQuestionTableViewController.swift
//  ExamApp
//
//  Created by justin on 2022/5/5.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

protocol AddQuestionDelegate {
    func addQuestionDidSaveQuestion(question: Question, controller: UIViewController)
    func addQuestionDidClose(controller: UIViewController)
}

class AddQuestionTableViewController: UITableViewController {
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var pointTextField: UITextField!
    @IBOutlet weak var isCorrectSegmetedControl: UISegmentedControl!
    
    private var isCorrect: Bool = false
    
    var delegate: AddQuestionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.isCorrectSegmetedControl.addTarget(self, action: #selector(isCorrectSegmentedControlSelected), for: .valueChanged)
    }
    
    @objc func isCorrectSegmentedControlSelected(segementedControl: UISegmentedControl) {
        isCorrect = segementedControl.selectedSegmentIndex == 0 ? true : false
    }
    
    @IBAction func close() {
        delegate.addQuestionDidClose(controller: self)
    }
    
    @IBAction func save() {
        let text = questionTextField.text!
        let point = Double(pointTextField.text!)!
        
        let question = Question(text: text, point: point, isCorrect: isCorrect)
        delegate.addQuestionDidSaveQuestion(question: question, controller: self)
    }
}
