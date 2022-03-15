//
//  ResultViewController.swift
//  rps-strategy
//
//  Created by 鈴木悠介 on 2022/03/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var rpcImage1: UIImageView!
    @IBOutlet weak var rpcImage2: UIImageView!
    @IBOutlet weak var rpcImage3: UIImageView!
    @IBOutlet weak var rpcImage4: UIImageView!
    @IBOutlet weak var secondArrowImage: UIImageView!
    @IBOutlet weak var thirdArrowImage: UIImageView!
    @IBOutlet weak var fourthArrowImage: UIImageView!
    let hands = ["hand-zero", "hand-two", "hand-five"]
    var values = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        generateRPS()
        
        let angle90 = 90 * CGFloat.pi / 180
        let angle180 = 180 * CGFloat.pi / 180
        let angle270 = 270 * CGFloat.pi / 180
        secondArrowImage.transform = CGAffineTransform(rotationAngle: CGFloat(angle90))
        thirdArrowImage.transform = CGAffineTransform(rotationAngle: CGFloat(angle180))
        fourthArrowImage.transform = CGAffineTransform(rotationAngle: CGFloat(angle270))

        // Do any additional setup after loading the view.
    }
    
    private func generateRPS() {
        values.removeAll()
        let images = [rpcImage1, rpcImage2, rpcImage3, rpcImage4]
        for num in 0..<images.count {
            values.append(hands.randomElement()!)
            images[num]!.image = UIImage(named:values[num])
        }
    }
    
    @IBAction func regenerateButtonTapped(_ sender: Any) {
        generateRPS()
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
