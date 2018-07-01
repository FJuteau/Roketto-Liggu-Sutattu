//
//  PlaylistRepository.swift
//  Roketto Liggu Sutattu
//
//  Created by François Juteau on 01/07/2018.
//  Copyright © 2018 Momo. All rights reserved.
//

import Foundation

class PlaylistRepository {
  
  func requestPlaylists(for id: Int, platformId: Int) -> [Playlist] {
    
    let playlist2v2 = Playlist(rankType: "Ranked Double 2v2", rankLeagueName: "Diamond", rankLeague: 3, rankDivision: 3, rating: 945, topRating: 14, rankImageUrlString: "diamond3")
    let playlist3v3standard = Playlist(rankType: "Ranked Standard 3v3", rankLeagueName: "Platinum", rankLeague: 2, rankDivision: 2, rating: 789, topRating: 39, rankImageUrlString: "platin2")
    let playlist3v3random = Playlist(rankType: "Ranked Random 3v3", rankLeagueName: "Gold", rankLeague: 1, rankDivision: 4, rating: 567, topRating: 56, rankImageUrlString: "gold1")
    let playlist1v1 = Playlist(rankType: "Ranked solo", rankLeagueName: "Platinum", rankLeague: 1, rankDivision: 3, rating: 765, topRating: 43, rankImageUrlString: "Platin1")
    return [playlist2v2, playlist3v3standard, playlist3v3random, playlist1v1]
  }
}
