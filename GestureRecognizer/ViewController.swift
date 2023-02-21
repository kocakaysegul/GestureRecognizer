//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Ayşegül Koçak on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isImg1 = true
    // logic
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic(){
        if(isImg1 == true){
            imageView.image = UIImage(named: "img2")
            myLabel.text = "img2"
            isImg1 = false
        } else {
            imageView.image = UIImage(named: "img1")
            myLabel.text = "img1"
            isImg1 = true
        }
    }


}

