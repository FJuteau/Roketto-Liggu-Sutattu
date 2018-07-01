//
//  PlaylistTableViewController.swift
//  Roketto Liggu Sutattu
//
//  Created by François Juteau on 07/01/2018.
//  Copyright © 2018 Momo. All rights reserved.
//

import UIKit


class PlaylistTableViewController: UITableViewController {
  
  var playlists: [Playlist] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()

      playlists = PlaylistRepository().requestPlaylists(for: 76561197970090670, platformId: 1)
      
      tableView.register(PlaylistTableViewCell.nib, forCellReuseIdentifier: PlaylistTableViewCell.storyBoardIdentifier)
      
      
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return playlists.count
    }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: PlaylistTableViewCell.storyBoardIdentifier) as? PlaylistTableViewCell else { fatalError() }

    let playlist = playlists[indexPath.row]
    cell.configure(with: playlist)
    
    return cell
  }

}
