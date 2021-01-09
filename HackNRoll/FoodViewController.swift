//
//  FoodViewController.swift
//  HackNRoll
//
//  Created by Teng Jian Ling on 9/1/21.
//

import UIKit

class FoodViewController: UIViewController {
    
    var amt = 0
    var food = 0
    
    @IBAction func bbqTroll7Days(_ sender: Any) {
        self.amt = 7
        performSegue(withIdentifier: "bbqTroll7DaysSegue", sender: self)
    }
    
    @IBAction func bbqTroll14Days(_ sender: Any) {
        self.amt = 14
        performSegue(withIdentifier: "bbqTroll14DaysSegue", sender: self)
    }
    
    @IBAction func bbqTroll28Days(_ sender: Any) {
        self.amt = 28
        performSegue(withIdentifier: "bbqTroll28DaysSegue", sender: self)
    }
    
    @IBAction func centaur7Days(_ sender: Any) {
        self.amt = 7
        performSegue(withIdentifier: "centaur7DaysSegue", sender: self)
    }
    
    @IBAction func centaur14Days(_ sender: Any) {
        self.amt = 14
        performSegue(withIdentifier: "centaur14DaysSegue", sender: self)
    }
    
    @IBAction func centaur28Days(_ sender: Any) {
        self.amt = 28
        performSegue(withIdentifier: "centaur28DaysSegue", sender: self)
    }
    
    @IBAction func mermaid7Days(_ sender: Any) {
        self.amt = 7
        performSegue(withIdentifier: "mermaid7DaysSegue", sender: self)
    }
    
    @IBAction func mermaid14Days(_ sender: Any) {
        self.amt = 14
        performSegue(withIdentifier: "mermaid14DaysSegue", sender: self)
    }
    
    @IBAction func mermaid28Days(_ sender: Any) {
        self.amt = 28
        performSegue(withIdentifier: "mermaid28DaysSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! DragonViewController
        vc.foodAmount = food + self.amt
    }
    
    @IBOutlet weak var trollImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trollImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        
        
        // Do any additional setup after loading the view.
    }
    
//    func addDays(amt: Int) {
//        dragonVC.foodAmount = dragonVC.foodAmount + amt
//        dragonVC.daysLeft.text = String(dragonVC.foodAmount)
//    }
    


}
