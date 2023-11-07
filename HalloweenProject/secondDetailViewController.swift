//
//  secondDetailViewController.swift
//  HalloweenProject
//
//  Created by Brendan Kumasaka on 11/2/23.
//

import UIKit

class secondDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        
        
    }
}
