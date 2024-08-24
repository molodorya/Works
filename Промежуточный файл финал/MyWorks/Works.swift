//
//  Works.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 18.08.2024.
//

import UIKit

class Works: UIViewController {
    
    static var works: [String] = []
    static var status: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var buttonSet: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonSet.layer.cornerRadius = buttonSet.frame.height / 2
        
      
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 70
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { Timer in
            self.tableView.reloadData()
        }
    
    }
}


extension Works: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Works.works.count
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            Works.works.remove(at: indexPath.row)
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorksCell
        
        cell.titleToDo.text = Works.works.reversed()[indexPath.row]
        
        
        cell.statusToDo.text = Works.status.reversed()[indexPath.row]
        
        
        switch Works.status.reversed()[indexPath.row] {
            
        case "Опциональный":
            cell.statusToDo.textColor = .darkGray
            cell.statusToDo.font = UIFont.systemFont(ofSize: 12)
            
        case "Важный":
            cell.statusToDo.textColor = .purple
            cell.statusToDo.font = UIFont.systemFont(ofSize: 12)
            
        case "Очень важный":
            cell.statusToDo.textColor = .red
            cell.statusToDo.font = UIFont.boldSystemFont(ofSize: 12)
            
            
        default:
            break
        }
        
        
        return cell
    }
    
    
}
