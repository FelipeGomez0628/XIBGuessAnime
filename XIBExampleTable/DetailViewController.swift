//
//  DetailViewController.swift
//  XIBExampleTable
//
//  Created by Consultant on 7/7/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name: String?
    var image: String?
    var selectedImade: String?
       
    @IBOutlet weak var aniName: UILabel!
    @IBOutlet weak var imanimation: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        aniName.text = image
        
        imanimation.image = UIImage(named: image ?? "")
        
    print(image ?? "")
        
        
        if image ?? "" == "image_0"{
            
            aniName.text = "Full Metal Alchemist"
        }
        else if image ?? "" == "image_1"{
            aniName.text = "Hunter X Hunter"
    
        }
        else if image ?? "" == "image_2"{
            aniName.text = "One Piece"
    
        }
        else if image ?? "" == "image_3"{
            aniName.text = "Demon Slayer"
        }
        else if image ?? "" == "image_4"{
            aniName.text = "Death Note"
        }
        else if image ?? "" == "image_5"{
            aniName.text = "Bleach"
        }
        else if image ?? "" == "image_6"{
            aniName.text = "Dragon Ball"
        }
        else if image ?? "" == "image_7"{
            aniName.text = "Naruto"
        }
        else if image ?? "" == "image_8"{
            aniName.text = "One Puch Man"
        }
        else if image ?? "" == "image_9"{
            aniName.text = "Yu-Gi-Oh!"
        }
        else if image ?? "" == "image_10"{
            aniName.text = "Sailor Moon"
        }
        else if image ?? "" == "image_11"{
            aniName.text = "Attack On Titan"
        }
        else if image ?? "" == "image_12"{
            aniName.text = "Fairy Tail"
        }
        
    }
    
    
    
    
    @IBAction func backToGuess(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

