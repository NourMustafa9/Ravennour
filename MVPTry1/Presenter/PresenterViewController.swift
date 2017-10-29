//
//  ViewControllerPresenter.swift
//  MVPTry
//
//  Created by Admin on 10/28/17.
//  Copyright © 2017 ITI. All rights reserved.
//

import Foundation
class ViewControllerPresenter {
    static func calcAge(birthday: String) -> Int{
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateFormater.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let now = Date()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
        let age = calcAge.year
        return age!
    }
    
    static func checkFeilds(dogName : String, dogBreed : String, dogAge : String)->Bool{
        if(dogName.isEmpty || dogBreed.isEmpty || dogAge.isEmpty){
            
            return false
        }
        return true
        
        
    }
}
