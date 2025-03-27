//
//  ViewController.swift
//  Lists
//
//  Created by Ngoni Mapfumo on 3/27/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}
    
    extension ViewController: UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("clicked\(indexPath)")
        }
        
    }

    extension ViewController: UITableViewDataSource {
        
        func tableView(_ tableView:UITableView,  numberOfRowsInSection section:Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row): Hello, World!"
            
            cell.detailTextLabel?.text = "Swift"
            return cell
        }
        
    }




