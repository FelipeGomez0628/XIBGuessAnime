//
//  TableViewCell.swift
//  XIBExampleTable
//
//  Created by Consultant on 7/6/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var aniImageView: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var indexPath: IndexPath?
    var name: String?
    var nameOFAnime: String?
    
    //Takes the parameters of what will be pass in
    func configure(imageStr: String, indexPath: IndexPath){
        self.aniImageView.image = UIImage(named: imageStr)
        self.indexPath = indexPath
        self.titleLbl.text = "Guess The Name"
        self.backgroundColor = .systemTeal
        self.bottomLabel.text = String(indexPath.row + 1)
    }
    
    
    
    
}
