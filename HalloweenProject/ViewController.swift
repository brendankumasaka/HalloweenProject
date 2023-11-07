//
//  ViewController.swift
//  HalloweenProject
//
//  Created by Brendan Kumasaka on 10/31/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var candyArray = ["Hershey", "Twix", "Crunch", "Reeces"]
    
    var ratingsArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️"]
    
    var categoryOneImagesData = [String]()
    
    
    
    var candyArray2 = ["Sour Patch", "Warheads", "Toxic Waste", "Haribo Spahgetti"]
    
    var ratingsArray2 = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️"]
    
    var categoryTwoImagesData = [String]()
    
    
    
    var candyArray3 = ["Swedish Fish", "Gummy Bears", "Lifesavers", "Trolli Crawlers"]
    
    var ratingsArray3 = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️"]
    
    var categoryThreeImagesData = [String]()
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
                       let dict = NSDictionary(contentsOfFile: path!)
                       categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
                   }
               
                   
                   @IBOutlet weak var tableView: UITableView!
                   
                   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
                   {
                       return candyArray.count
                   }
                   
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell
           {
                       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = candyArray[indexPath.row]
                       cell.detailTextLabel?.text = ratingsArray[indexPath.row]
                       cell.textLabel?.text = text
                       return cell
                   }
               
               func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                   {
                       tableView.deselectRow(at: indexPath, animated: true)
                   }

               //Part 9
               
              override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                   if segue.identifier == "mySegue"
                   {
                       let s1 = segue.destination as! secondDetailViewController
                       let imageIndex = tableView.indexPathForSelectedRow?.row
                       s1.imagePass = categoryOneImagesData[imageIndex!]
            
            
            
            
            
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            categoryTwoImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
        }
        
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return candyArray2.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let text = candyArray2[indexPath.row]
            cell.detailTextLabel?.text = ratingsArray2[indexPath.row]
            cell.textLabel?.text = text
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "mySegue"
            {
                let s2 = segue.destination as! thirdDetailViewController
                let imageIndex = tableView.indexPathForSelectedRow?.row
                s2.imagePass = categoryTwoImagesData[imageIndex!]
                
                
                
            }
        }
        
    }
}
