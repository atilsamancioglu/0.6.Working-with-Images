//
//  ViewController.swift
//  Working with Images
//
//  Created by Atıl Samancıoğlu on 05/12/2016.
//  Copyright © 2016 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        number = 0
        nameLabel.text = "Cartman"
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changeTheName))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }


    @IBAction func changeClicked(_ sender: Any) {
        
        //button for changinc the image
        
        if number == 0 {
            imageView.image = UIImage(named: "kenny.png")
            nameLabel.text = "Kenny"
            number = number + 1
        } else {
            imageView.image = UIImage(named: "cartman.png")
            nameLabel.text = "Cartman"
            number = number - 1
        }

    }
    
    func changeTheName() {
        
        //function for changing the name
        
        if number == 0 {
            imageView.image = UIImage(named: "kenny.png")
            nameLabel.text = "Kenny"
            number = number + 1
        } else {
            imageView.image = UIImage(named: "cartman.png")
            nameLabel.text = "Cartman"
            number = number - 1
        }

        
    }
    
    

}

