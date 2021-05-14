//
//  UserGraphCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class UserGraphCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    var cells = [UserGraphCollectionViewModel]()
    
    
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
      super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
        delegate = self
        dataSource = self
        register(UserGraphCollectionViewCell.self, forCellWithReuseIdentifier: UserGraphCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = UserGraphConstants.userGraphMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: UserGraphConstants.leftDistanceToView, bottom: 0, right: UserGraphConstants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func set(cells: [UserGraphCollectionViewModel]) {
        self.cells = cells
    }
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: UserGraphCollectionViewCell.reuseId, for: indexPath) as! UserGraphCollectionViewCell
        cell.yearLabel.text = cells[indexPath.row].year
        cell.view.strokeEnd = cells[indexPath.row].strokeEnd
        cell.view.shapeLineWidth = 9
        
           return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: UserGraphConstants.userGraphItemWidth, height: frame.height )
    }

    
 

}
