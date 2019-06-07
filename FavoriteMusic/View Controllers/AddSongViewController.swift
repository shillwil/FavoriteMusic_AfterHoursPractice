//
//  AddSongViewController.swift
//  FavoriteMusic
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

protocol AddSongDelegate: class {
    // Why does this method not need an opening and closing curly brace
    // We're not declaring the function and what it must do, it's simply saying whomever adopts this protocol, they need to include this method
    func addSongTapped()
}

class AddSongViewController: UIViewController {
    
    var songController: SongController?
    weak var delegate: AddSongDelegate?

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
        
        delegate?.addSongTapped()
        
        navigationController?.popViewController(animated: true)
    }
    

}
