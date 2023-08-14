//
//  ViewController.swift
//  QuizApp
//
//  Created by Aashi Parikh on 14/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
    super.viewDidLoad()
    questionLabel.text = questions[currentQuestionIndex]
     }
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
    
    "What is 7+7?",
    
    "What is the capital of India?",
    
    "What is 0*20?"
    
     ]
    
    let answers: [String] = [
     
     "14",
     
    "Delhi",
     
     "0"
     
      ]
    
    var currentQuestionIndex: Int = 0
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
         if currentQuestionIndex == questions.count {
        currentQuestionIndex = 0
         }
         let question: String = questions[currentQuestionIndex]
         questionLabel.text = question
         answerLabel.text = "???"
     }
     @IBAction func showAnswer(_ sender: UIButton) {
         
         let answer: String = answers[currentQuestionIndex]
          answerLabel.text = answer
     }
    
    

}

