//
//  PlaylistTableViewCell.swift
//  Roketto Liggu Sutattu
//
//  Created by François Juteau on 07/01/2018.
//  Copyright © 2018 Momo. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {
  
  @IBOutlet weak var rankImageView: UIImageView!
  @IBOutlet weak var rankTypeLabel: UILabel!
  @IBOutlet weak var rankLabel: UILabel!
  @IBOutlet weak var mmrLabel: UILabel!
  @IBOutlet weak var percentToTheTopLabel: UILabel!
  @IBOutlet weak var nbOfGamesLabel: UILabel!
  
  var model: Playlist?
  
  public static var nib: UINib {
    return UINib.init(nibName: storyBoardIdentifier, bundle: Bundle(for: self))
  }
  
   static var storyBoardIdentifier: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func configure(with playlist: Playlist ) {
    rankTypeLabel.text = playlist.rankType
    rankLabel.text = "\(playlist.rankLeagueName) \(playlist.rankLeague) Division \(playlist.rankDivision)"
    mmrLabel.text = String(playlist.rating)
    percentToTheTopLabel.text = "(Top \(playlist.topRating)%)"
    
    model = playlist
  }
  
}

