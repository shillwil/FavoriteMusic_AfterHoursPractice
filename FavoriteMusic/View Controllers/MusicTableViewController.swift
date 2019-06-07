//
//  MusicTableViewController.swift
//  FavoriteMusic
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class MusicTableViewController: UITableViewController {
    
    var songController = SongController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songController.songs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath)
        
        let song = songController.songs[indexPath.row]

        cell.textLabel?.text = song.title
        cell.detailTextLabel?.text = song.genre

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewSongSegue" {
            guard let destinationVC = segue.destination as? AddSongViewController else { return }
            
            destinationVC.songController = songController
        }
    }
    
}
