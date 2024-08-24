//
//  WorksCell.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 24.08.2024.
//

import UIKit

class WorksCell: UITableViewCell {
    
    
    @IBOutlet weak var titleToDo: UILabel!
    @IBOutlet weak var statusToDo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Настраиваем представление для выбранного состояния
    }

}
