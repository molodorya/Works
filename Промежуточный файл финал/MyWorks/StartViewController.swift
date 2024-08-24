//
//  ViewController.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 18.08.2024.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 17.5
        view2.layer.cornerRadius = 17.5
        view3.layer.cornerRadius = 17.5
    
    }
    
    
    
    @IBAction func actionButton(_ sender: UIButton) {
       
    }
    

}

