//
//  CalendarViewController.swift
//  Final Workout App
//
//  Created by iD Student on 7/10/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit


class CalendarViewController: UIViewController {

  // let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func CalendarButtonPressed(_ sender: Any) {
        if let url = NSURL(string: "https://calendar.google.com/calendar/render?pli=1#main_7"){
            UIApplication.shared.openURL(url as URL)
      }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
