//
//  LoginSwitcher.swift
//  SDCrew
//
//  Created by Denis Arsenault on 8/19/19.
//  Copyright © 2019 Satcom Direct, Inc. All rights reserved.
//

import UIKit

class LoginSwitcher{
    
    static func updateRootVC(){
        
        let status = UserDefaults.standard.bool(forKey: AppConfig.UserdefaultKeys.LOGGED_IN_STATUS_KEY)
        var rootVC : UIViewController?
        
        if(status == true){
            
            let storyBoard = UIStoryboard(name: "FlightLegList", bundle: nil)
            let nav = storyBoard.instantiateViewController(withIdentifier: "FlightLegListNav")
            UIApplication.shared.delegate?.window??.rootViewController = nav
        }else{
            
            rootVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController = rootVC
        }
        
        
        
    }

}
