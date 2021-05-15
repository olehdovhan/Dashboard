//
//  DashboardCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardCollectionView: UICollectionView {
  var cells = [DashboardCollectionModel]()
  let parrentVc: UIViewController!
 
  init(parrentVc: UIViewController) {
    let layout = UICollectionViewFlowLayout()
    self.parrentVc = parrentVc
    layout.scrollDirection = .horizontal
    super.init(frame: .zero, collectionViewLayout: layout)
    backgroundColor =  #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
    delegate = self
    dataSource = self
    register(DashboardCollectionViewCell.self, forCellWithReuseIdentifier: DashboardCollectionViewCell.reuseId)
    translatesAutoresizingMaskIntoConstraints = false
    layout.minimumLineSpacing = Constants.dashboardMinimumLineSpacing
    contentInset = UIEdgeInsets(top: 0,
                                left: Constants.leftDistanceToView,
                                bottom: 0,
                                right: Constants.rightDistanceToView)
    showsHorizontalScrollIndicator = false
    showsVerticalScrollIndicator = false
  }
  
  func set(cells: [DashboardCollectionModel]) {
    self.cells = cells
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension DashboardCollectionView: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cells.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = dequeueReusableCell(withReuseIdentifier: DashboardCollectionViewCell.reuseId, for: indexPath) as! DashboardCollectionViewCell
    cell.percentsLabel.text = cells[indexPath.row].percents
    cell.titleLabel.text = cells[indexPath.row].title
    cell.centerLabel.text = cells[indexPath.row].amount
    cell.lessLabel.text = cells[indexPath.row].less
    cell.targetLabel.text = cells[indexPath.row].target
    return cell
  }
}

extension DashboardCollectionView: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let delegate = parrentVc as! DashboardViewController
    delegate.showNextViewController()
  }
}

extension DashboardCollectionView: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: Constants.dashboardItemWidth, height: frame.height )
  }
}
