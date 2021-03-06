//
//  QuizViewController.swift
//  Quiz
//
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var questionLabel :UILabel?
    @IBOutlet var answerLabel :UILabel?
    
    var currentQuestionIndex = 0
    let questions : [String]
    let answers : [String]
    
    required init(coder aDecoder: NSCoder) {
        self.questions = [ "From what is cognac made?",
            "What is 7+77?",
            "What is the capital of Vermont"]
        self.answers = ["Grapes", "14", "Montpelier"]
        super.init(coder: aDecoder)
    }
   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.questions = [ "From what is cognac made?",
            "What is 7+77?",
            "What is the capital of Vermont"]
        self.answers = ["Grapes", "14", "Montpelier"]
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
        
    }
    
    @IBAction func showQuestion(AnyObject) {
        self.currentQuestionIndex++
        if(self.currentQuestionIndex == self.questions.count){
            self.currentQuestionIndex = 0
        }
        self.questionLabel!.text = self.questions[self.currentQuestionIndex]
        self.answerLabel!.text = "???"
    }
    
    @IBAction func showAnswer(AnyObject) {
        self.answerLabel!.text = self.answers[self.currentQuestionIndex]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
