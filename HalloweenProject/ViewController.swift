//
//  ViewController.swift
//  HalloweenProject
//
//  Created by Brendan Kumasaka on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    var candyArray = ("Hershey", "Twix", "Crunch", "Reece's")
    
    var ratingArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️"]
    
    var categoryOneImagesData = [String]()
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! secondDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
             s1.imagePass = categoryOneImagesData[imageIndex!]
             }
             }
             }
             
             
             
 
