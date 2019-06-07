//
//  SongController.swift
//  FavoriteMusic
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class SongController {
    var songs: [Song] = []
    
    func createSong(title: String, genre: String) {
        let song = Song(title: title, genre: genre)
        
        songs.append(song)
    }
}
