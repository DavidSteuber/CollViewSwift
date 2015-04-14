//
//  DetailViewController.swift
//  CollViewSwift
//
//  Created by David Steuber on 4/14/15.


import UIKit

class DetailViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var imageView: UIImageView!

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = image
    }
}