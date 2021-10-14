//
//  ViewController.swift
//  ProperyList
//
//  Created by Jisa Gigi on 10/14/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomImage(_ sender: Any) {
        let path = Bundle.main.path(forResource: "ImageList", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        let data = dict?.object(forKey: "Images") as! [String]
        imageView.image = UIImage(named: data.randomElement()!)
    }
    
}

