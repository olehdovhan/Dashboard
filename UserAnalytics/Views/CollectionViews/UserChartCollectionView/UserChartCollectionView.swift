//
//  UserGraphCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class UserChartCollectionView: UICollectionView {
  var cells = [UserChartCollectionViewModel]()
  
  init() {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    super.init(frame: .zero, collectionViewLayout: layout)
    backgroundColor = UIColor(named: "Background")
    delegate = self
    dataSource = self
    register(UserChartCollectionViewCell.self, forCellWithReuseIdentifier: UserChartCollectionViewCell.reuseId)
    translatesAutoresizingMaskIntoConstraints = false
    layout.minimumLineSpacing = UserChartConstants.userChartMinimumLineSpacing
    contentInset = UIEdgeInsets(top: 0,
                                left: UserChartConstants.leftDistanceToView,
                                bottom: 0,
                                right: UserChartConstants.rightDistanceToView)
    showsHorizontalScrollIndicator = false
    showsVerticalScrollIndicator = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func set(cells: [UserChartCollectionViewModel]) {
    self.cells = cells
  }
}

extension UserChartCollectionView: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cells.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = dequeueReusableCell(withReuseIdentifier: UserChartCollectionViewCell.reuseId, for: indexPath) as! UserChartCollectionViewCell
    cell.yearLabel.text = cells[indexPath.row].year
    cell.chart.strokeEnd = cells[indexPath.row].strokeEnd
    cell.chart.shapeLineWidth = 9
    return cell
  }
}

extension UserChartCollectionView: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: UserChartConstants.userChartItemWidth, height: frame.height )
  }
}
