//
//  firstDetailViewController.swift
//  HalloweenProject
//
//  Created by Brendan Kumasaka on 11/7/23.
//

import UIKit

class firstDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var candyLabel: UILabel!
    
    @IBOutlet weak var candyText: UITextView!
    
    @IBOutlet weak var candyImage: UIImageView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }

}
