//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Michael Jay Abalos on 27/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController,WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock{
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.uiDelegate = self
        titleLabel.text = partyRock.videoTitle
   
        webView.configuration.allowsInlineMediaPlayback = true
        webView.configuration.mediaTypesRequiringUserActionForPlayback = .all

        let html = "<video playsinline controls width=\"100%\" src=\"\(partyRock.videoURL)\"> </video>"
        self.webView.loadHTMLString(html, baseURL: nil)
         webView.load(URLRequest.init(url: URL.init(string: partyRock.videoURL)!))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
