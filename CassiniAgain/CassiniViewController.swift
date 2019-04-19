//
//  CassiniViewController.swift
//  CassiniAgain
//
//  Created by Alevtina on 19/04/2019.
//  Copyright © 2019 Alevtina. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = segue.destination as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }


}
