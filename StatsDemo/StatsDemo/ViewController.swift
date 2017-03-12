//
//  ViewController.swift
//  StatsDemo
//
//  Created by Rodrigo Morbach on 12/03/17.
//  Copyright © 2017 Morbach Inc. All rights reserved.
//

import UIKit
import SwiftStats

class ViewController: UIViewController {
    @IBOutlet weak var dataTextView: UITextView!
    
    @IBOutlet weak var resultsTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTapGesture()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func calc(_ sender: Any) {
        let numbers = self.dataTextView.text.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).components(separatedBy: ",")
        if numbers.count <= 0 {return}
        let d = numbers.map({ (s) -> Float in
            return Float(s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!
        })
        self.resultsTextView.text = "Average: \(SwiftStats.average(d))"
        self.resultsTextView.text =  self.resultsTextView.text.appending("\nMode: \(SwiftStats.mode(d))")
        self.resultsTextView.text =  self.resultsTextView.text.appending("\nVariance: \(SwiftStats.variance(d))")
        self.resultsTextView.text =  self.resultsTextView.text.appending("\nStandard Deviation: \(SwiftStats.standardDeviation(d))")
        self.resultsTextView.text =  self.resultsTextView.text.appending("\nMedian: \(SwiftStats.median(d))")
        
    }
}

extension ViewController
{
    func addTapGesture()
    {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    func dismissKeyboard()
    {
        self.view.endEditing(true)
    }
}

