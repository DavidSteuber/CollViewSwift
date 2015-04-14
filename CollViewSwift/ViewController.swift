//
//  ViewController.swift
//  CollViewSwift
//
//  Created by David Steuber on 4/14/15.
//  Copyright (c) 2015 David Steuber.
//

import UIKit

let kDetaildViewControllerID = "DetailView"             // view controller storyboard id
let kCellID = "CellID"                                  // UICollectionViewCell storyboard id

class ViewController: UICollectionViewController {

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32;
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        // we're going to use a custom UICollectionViewCell, which will hold an image and its label
        //
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(kCellID, forIndexPath: indexPath) as! Cell

        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "whatever" {
            // do some shit
        }
    }
}
