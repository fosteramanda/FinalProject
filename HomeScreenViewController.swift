//
//  HomeScreenViewController.swift
//  Final Workout App
//
//  Created by iD Student on 7/11/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TabBar: UITabBarItem!
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addGoal(_ sender: Any)
    {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
        }
        
    }
    
   
    @IBOutlet weak var inputWorkout: UITextField!
    
    @IBAction func addWorkout(_ sender: Any) {
        if(inputWorkout.text != "")
        {
            workouts.append(inputWorkout.text!)
            inputWorkout.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.input.delegate = self
        self.inputWorkout.delegate = self
        
        //self.tabBarController?.tabBar.isHidden == false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hind keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Presses return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        inputWorkout.resignFirstResponder()
        return(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
