//
//  FileDetailsViewController.swift
//  dropbox
//
//  Created by Don Okuda on 2/8/15.
//  Copyright (c) 2015 Don Okuda. All rights reserved.
//

import UIKit

class FileDetailsViewController: UIViewController {

    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var favoritedButtonImage: UIImageView!
    @IBOutlet weak var moreButton: UIBarButtonItem!
    @IBOutlet weak var favoriteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.hidden = true
        favoritedButtonImage.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func moreButtonTapped(sender: AnyObject) {
        detailsView.hidden = !detailsView.hidden
    }
    
    @IBAction func favoriteButtonTapped(sender: AnyObject) {
        favoritedButtonImage.hidden = !favoritedButtonImage.hidden
    }
}
