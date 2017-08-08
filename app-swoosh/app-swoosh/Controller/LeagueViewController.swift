//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Benjamin Budian on 8/8/17.
//  Copyright © 2017 ThisGuyMagic. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController
        {
            skillViewController.player = player
        }
    }
    
    //Control + drag from view controller in list to view controller in storyboard. then set the segue identifier
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSeque", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
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
