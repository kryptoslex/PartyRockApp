//
//  PartyTableViewCell.swift
//  PartyRockApp
//
//  Created by Michael Jay Abalos on 27/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(partyRock: PartyRock) {
        //update ui
        videoTitle.text = partyRock.videoTitle
        //to do set image
        
        print("image url = \(partyRock.imageURL)")
        let url = URL.init(string: partyRock.imageURL)
        DispatchQueue.global().async {
            do{
                let data = try Data.init(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage.init(data: data)
                }
            }catch {
                print("error")
            }
        }
    }

}
