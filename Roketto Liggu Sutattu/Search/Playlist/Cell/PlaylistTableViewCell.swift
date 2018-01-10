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
  
  
  
  

  @IBOutlet private weak var rankTitleLabel: UILabel!
  
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

  func configure(with string: String) {
    rankTitleLabel.text = string
  }
  
}
