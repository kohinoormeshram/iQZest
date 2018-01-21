//
//  ViewController.swift
//  iQZest
//
//  Created by Kohinoor Meshram on 21/01/18.
//  Copyright © 2018 Kohinoor Meshram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var completedQuestionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let allQuestions = QuestionBank()
    var currentQuestion = 1
    var currentScore = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1{
//            print("True Pressed!")
            updateStatsView(selectedAnswer: true)
        }
        else{
//            print("False Pressed!")
            updateStatsView(selectedAnswer: false)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateStatsView(selectedAnswer: Bool){
        if selectedAnswer == allQuestions.list[currentQuestion].answer
        {
            currentScore+=1
        }
        currentQuestion+=1
        update()
    }
    
    func update(){
        if currentQuestion == 10{
            restart()
        }
        else{
        questionLabel.text = allQuestions.list[currentQuestion].questionText
        scoreLabel.text = "Score: \(currentScore)"
        completedQuestionLabel.text = "\(currentQuestion) /10"
        progressBar.progress = Float(currentQuestion)/10.0
        }
    }
    
    func restart()
    {
        currentQuestion = 1
        currentScore = 0
        update()
    }

}

