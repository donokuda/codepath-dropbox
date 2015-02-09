//
//  PhotosViewController.swift
//  dropbox
//
//  Created by Don Okuda on 2/8/15.
//  Copyright (c) 2015 Don Okuda. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet weak var photosView: UIImageView!
    @IBOutlet weak var photosScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photosScrollView.contentSize = photosView.frame.size
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

}
