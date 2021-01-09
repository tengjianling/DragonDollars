//
//  DragonViewController.swift
//  HackNRoll
//
//  Created by Teng Jian Ling on 8/1/21.
//

import UIKit
import Foundation

class DragonViewController: UIViewController {

    var foodVC: FoodViewController = FoodViewController(nibName: nil, bundle: nil)
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var dragonImage: UIImageView!
    var drago1: UIImage!
    var drago2: UIImage!
    var dragos: [UIImage]!
    var animatedDrago: UIImage!
    
    var foodAmount: Int = 0
    
    weak var timer: Timer?
    
    @IBOutlet weak var daysLeft: UILabel!
    @IBOutlet weak var feedBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        daysLeft.text = String(foodAmount)

        drago1 = UIImage(named: "drago 1")
        drago2 = UIImage(named: "drago 2")
        dragos = [drago1, drago2]
        animatedDrago = UIImage.animatedImage(with: dragos, duration: 1.0)
        dragonImage.image = animatedDrago
        
        progressBar.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        progressBar.progressTintColor = UIColor.lightGray
        progressBar.trackTintColor = UIColor.red
        progressBar.progress = 0
        
        //daysLeft.text = String(foodAmount)
        
        feedBtn.layer.cornerRadius = 10

        
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        

        
        // Do any additional setup after loading the view.
    }
    @IBAction func feedBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "currFoodAmt", sender: self)
    }
    
    @objc func fireTimer() {
        if (foodAmount <= 0) {
            progressBar.progress = progressBar.progress + 0.2
        } else {
            foodAmount = foodAmount - 1
            daysLeft.text = String(foodAmount)
            
        }
        
        if (progressBar.progress >= 1) {
            timer?.invalidate()
        }
        print("Timer fired!")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let fc = segue.destination as! FoodViewController
        fc.food = foodAmount
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
