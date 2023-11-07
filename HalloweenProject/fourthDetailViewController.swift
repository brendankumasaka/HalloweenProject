//
//  fourthDetailViewController.swift
//  HalloweenProject
//
//  Created by Brendan Kumasaka on 11/7/23.
//

import UIKit

class fourthDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
            
        }
        
        
        
    }
}
