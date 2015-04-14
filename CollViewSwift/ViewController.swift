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

        // make the cell's title the actual NSIndexPath value
        cell.label?.text = "{\(indexPath.row),\(indexPath.section)}"
        let imageToLoad = "images/thumb/\(indexPath.row).JPG"
        cell.image?.image = UIImage(named: imageToLoad)

        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let selectedIndexPath = self.collectionView?.indexPathsForSelectedItems()[0] as! NSIndexPath
            let imageNameToLoad = "images/full/\(selectedIndexPath.row)_full"
            let pathToImage = NSBundle.mainBundle().pathForResource(imageNameToLoad, ofType: "JPG")
            let image = UIImage(contentsOfFile: pathToImage!)

            var detailViewController = segue.destinationViewController as! DetailViewController
            detailViewController.image = image
        }
    }
}
