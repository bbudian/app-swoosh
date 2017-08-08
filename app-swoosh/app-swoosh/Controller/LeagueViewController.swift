//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Benjamin Budian on 8/8/17.
//  Copyright © 2017 ThisGuyMagic. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Control + drag from view controller in list to view controller in storyboard. then set the segue identifier
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSeque", sender: self)
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
