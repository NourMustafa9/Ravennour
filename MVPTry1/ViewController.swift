//
//  ViewController.swift
//  MVPTry1
//
//  Created by Admin on 10/29/17.
//  Copyright © 2017 ITI. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    //MARK:- OUTLETS
    @IBOutlet weak var mtTableView: UITableView!
    
    //MARK:- Variables
    var dogs = [DogData]()
    
    //MARK:- Viewlife cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "MVP Try1"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mtTableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dogsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? MyyTableViewCell
        cell?.dogName.text = dogsArray[indexPath.row].name
        if ("\(dogsArray[indexPath.row].date!)" == nil){
            cell?.dogAge.text = ""
        }
        cell?.dogAge.text = "\(dogsArray[indexPath.row].date!)"
        return cell!
    }
}
