//
//  AddSongViewController.swift
//  FavoriteMusic
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class AddSongViewController: UIViewController {
    
    var songController: SongController?

    @IBOutlet weak var songNameTextField: UITextField!
    @IBOutlet weak var songGenreTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addSongTapped(_ sender: Any) {
        guard let songController = songController,
        let songName = songNameTextField.text,
        let songGenre = songGenreTextField.text else { return }
        
        songController.createSong(title: songName, genre: songGenre)
        
        navigationController?.popViewController(animated: true)
    }
    

}
