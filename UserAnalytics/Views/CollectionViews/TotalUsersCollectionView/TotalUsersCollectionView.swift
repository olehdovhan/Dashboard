//
//  TotalUsersCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class TotalUsersCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [TotalUsersCollectionModel]()
 
    
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
     
     
   
        
        backgroundColor =  #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
        delegate = self
        dataSource = self
        register(TotalUsersCollectionViewCell.self, forCellWithReuseIdentifier: TotalUsersCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = UserConstants.totalUsersMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: UserConstants.leftDistanceToView, bottom: 0, right: UserConstants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
    }
    
    func set(cells: [TotalUsersCollectionModel]) {
        self.cells = cells
    }
    
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = dequeueReusableCell(withReuseIdentifier: TotalUsersCollectionViewCell.reuseId, for: indexPath) as! TotalUsersCollectionViewCell
        cell.percentsLabel.text = cells[indexPath.row].percents
        cell.titleLabel.text = cells[indexPath.row].title
        cell.descriptionLabel.text = cells[indexPath.row].description
        cell.lessLabel.text = cells[indexPath.row].less
        cell.targetLabel.text = cells[indexPath.row].target
        cell.circularChart.shapeLineWidth = 14
        cell.circularChart.overShapeLineWidth = 18
        
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: UserConstants.totalUsersItemWidth, height: frame.height )
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    



}
