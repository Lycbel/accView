//
//  GameListViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class GameListViewController : ViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var gameList: UICollectionView!
    //@IBOutlet weak var gameList: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gameList.backgroundColor = UIColor.clear
      
    }
    private let sectionInsets = UIEdgeInsets(top: 50.0,
                                             left: 20.0,
                                             bottom: 50.0,
                                             right: 20.0)

    
    let reuseIdentifier = "GameListCell" // also enter this string as the cell identifier in the storyboard
  
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Context.gameList.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.Pic.image =  Context.gameList[indexPath.item].smallIcon
        cell.game = Context.gameList[indexPath.item]
        // cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print (indexPath.item)
        if (indexPath.item != 0) {
            return;
        }
        // handle tap events
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let navigationController = storyBoard.instantiateViewController(withIdentifier: "mainNav") as! UITabBarController
        if(Context.mainNav != nil) {
            Context.currentGame = Context.gameList[indexPath.item]
            Context.mainNav!.selectedIndex = 1;
        }
    }
}
