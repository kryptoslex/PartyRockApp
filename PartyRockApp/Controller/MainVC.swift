//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Michael Jay Abalos on 27/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var partyRockArray:[PartyRock] = [PartyRock]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let p1 = PartyRock.init(imageURL: "http://www.mtv.co.uk/sites/default/files/styles/image-w-520-h-292-scale-crop/public/mtv_uk/galleries/large/2016/01/18/all_time_low_hopeless_jw_555.jpeg?itok=9QRspEh7", videoURL: "https://youtu.be/LmnP0orCuE8", videoTitle: "Somewhere in never land")
        
        partyRockArray.append(p1)
        partyRockArray.append(p1)
        partyRockArray.append(p1)
        partyRockArray.append(p1)
        partyRockArray.append(p1)
        partyRockArray.append(p1)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //table view delegates
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyTableViewCell{
            
            let partyRock = partyRockArray[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
            
        }else{
             return UITableViewCell()
        }
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRockArray.count
    }
    
    
}

