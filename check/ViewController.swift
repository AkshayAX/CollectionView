//
//  ViewController.swift
//  check
//
//  Created by Akshaya Kumar N on 3/2/19.
//  Copyright © 2019 Akshaya Kumar N. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var colRef: UICollectionView!
    let array  = ["red","blue","yellow","black","grey","green"]
    let array1 = [#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1),#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        print(screenWidth)
        
        colRef.delegate = self
        colRef.dataSource = self
        let layout = colRef.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: (screenWidth-20)/2, height: screenWidth-350/2)
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.minimumLineSpacing = 10
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colRef.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath) as! collcell
        cell.test.text = array[indexPath.row]
        cell.backgroundColor = array1[indexPath.row]
        return cell
    }

}

