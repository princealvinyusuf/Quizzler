//
//  ViewController.swift
//  Quizzler
//
//  Created by Prince Alvin Yusuf on 16/02/21.
//  Copyright © 2021 Combro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        answerA.setTitle(quizBrain.getAnswerText(0), for: .normal)
        answerB.setTitle(quizBrain.getAnswerText(1), for: .normal)
        answerC.setTitle(quizBrain.getAnswerText(2), for: .normal)
        
        answerA.backgroundColor = UIColor.clear
        answerB.backgroundColor = UIColor.clear
        answerC.backgroundColor = UIColor.clear
        
    }
    
    
}
