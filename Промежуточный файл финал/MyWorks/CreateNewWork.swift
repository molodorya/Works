//
//  CreateNewWork.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 24.08.2024.
//

import UIKit

class CreateNewWork: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var buttonSet: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        hideKeyboardWhenTappedAround()
        
        buttonSet.layer.cornerRadius = 18
        
        print(segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex) ?? "")
       
    }
    
    
    
    @IBAction func addStatus(_ sender: UISegmentedControl) {
        
        
    }
    
    
    
    @IBAction func addWork(_ sender: UIButton) {
        
        Works.works.append(textField.text ?? "Ошибка")
        
        Works.status.append(segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex) ?? "")
        

        dismiss(animated: true)
        
    }
    

}
