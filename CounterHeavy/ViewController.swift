//
//  ViewController.swift
//  CounterHeavy
//
//  Created by Flymetric on 06.01.2026.
//

import UIKit

class ViewController: UIViewController {
    
    var count : Int = 0
    
    @IBOutlet weak var scrolView: UIScrollView!
    @IBOutlet weak var textViewStory: UITextView!
    
    @IBOutlet weak var resetCountButtonView: UIButton!
    @IBAction func actionResetButtonCountView(_ sender: Any) {
        count = 0
        textViewStory.text += "\n Значение сброшено в \(time()), что составляет: \(count)"
        textViewStory.isEditable = false
        textViewStory.focusEffect
    }
    
    @IBOutlet weak var minusButtonView: UIButton!
    @IBAction func actionMinusButtonView(_ sender: Any) {
        counterMinus()
    }
    
    @IBOutlet weak var plusButtonView: UIButton!
    @IBAction func actionPlusButtonView(_ sender: Any) {
        counterPlus()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func counterMinus(){
        count -= 1

        if count < 0 {
            count = 0
            textViewStory.text += "\n Попытка уйти в минус в \(time()), что составляет: \(count)"
            textViewStory.isEditable = false
        } else {
            textViewStory.text += "\n -1 в \(time()), что составляет: \(count)"
            textViewStory.isEditable = false
        }
        
    }
    
    func counterPlus(){
        count += 1
        textViewStory.text += "\n +1 в \(time()), что составляет: \(count)"
        textViewStory.isEditable = false
    }
    
    func time() -> String {
        var curentTime = Data()
        
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium  // или .short, .long
        timeFormatter.dateStyle = .none
        let timeString = timeFormatter.string(from: Date())
        print(timeString)  // 11:32:39 PM
        return timeString
    }

}

