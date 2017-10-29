//
//  AddDogViewController.swift
//  MVPTry
//
//  Created by Admin on 10/29/17.
//  Copyright © 2017 ITI. All rights reserved.
//

import UIKit

class AddDogViewController: UIViewController {
    //MARK:- OUTLETS
    @IBOutlet weak var dogNAme: UITextField!
    @IBOutlet weak var dogBreed: UITextField!
    @IBOutlet weak var dogAge: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    //MARK:- VARIABLES
    var doggo = DogData()
    //    var doggoArr = [DogData]()
    var dogPresenter : ViewControllerPresenter?
    
    //MARK:- Views Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add Dog!"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    @IBAction func saveDog(_ sender: Any) {
        doggo.name = dogNAme.text
        doggo.breed = dogBreed.text
        //please write the age in this format "MM/dd/yyyy"
        let doggoage = dogAge.text!
        let checks = ViewControllerPresenter.checkFeilds(dogName: doggo.name!, dogBreed: doggo.breed!, dogAge: doggoage)
        if(checks){
            let doggoAge = ViewControllerPresenter.calcAge(birthday: doggoage)
            print(doggoAge)
            doggo.date = doggoAge
            dogsArray.append(doggo)
            //        let VC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
            //        VC?.dogs = dogsArray
            //       self.navigationController?.popToViewController(VC!, animated: false)
            _ = self.navigationController?.popViewController(animated: true)
        }else{
            let alert = UIAlertController(title: "Attention",
                                          message: "Please fill in planks!!",
                                          preferredStyle: UIAlertControllerStyle.alert)
            
            let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.parent?.present(alert, animated: true, completion: nil)
        }
    }
}
