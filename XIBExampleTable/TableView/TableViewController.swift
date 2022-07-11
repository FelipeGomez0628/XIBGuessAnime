//
//  TableViewController.swift
//  Created by Felipe Gomez on 7/6/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    //number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 30
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)  as? TableViewCell else {
            return UITableViewCell()
        }
       let imageData = AppDelegate.images[indexPath.row]
//        configure UI
       cell.configure(imageStr: imageData.name, indexPath: indexPath)
       return cell
    }
          
    
    //perfom Segue to DetailView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
//        AppDelegate.images[indexPath.row]
        self.performSegue(withIdentifier: "goToDetail", sender: AppDelegate.images[indexPath.row])
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? ImageData else {
            return
        }
        
        if segue.identifier == "goToDetail" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.name = "Felipe"
            print(sender)
            destinationVC.image = sender.name
        }
    }
    
    // 1. Connect the Table view controller
    @IBOutlet weak var tableView: UITableView!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        //Register Cell
        //We need to integrate our elements into the system by registering it
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    
//    @IBAction func unwindMain (_ sender: UIStoryboardSegue){
//        print("Back To")
//    }
    

    
}


