//
//  ViewController.swift
//  XcodeServer
//
//  Created by Gitesh Agarwal on 11/10/18.
//  Copyright © 2018 Gitesh Agarwal. All rights reserved.
//

import UIKit
import SD
//import SDWebImage

class ViewController: UIViewController {
    
    let urlString = "https://www.shareicon.net/data/2016/06/01/577179_checkmark_128x128.png"

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.setTitle("Pull", for: .normal)
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let title = button.title(for: .normal)
        if title == "Remove"{
            self.image.image = nil
            self.button.setTitle("Pull", for: .normal)
        }else{
            let url = URL.init(string: urlString)
            self.image.sd_setImage(with: url) { (image, error, type, url) in
                self.button.setTitle("Remove", for: .normal)
            }
        }
    }
    
}

