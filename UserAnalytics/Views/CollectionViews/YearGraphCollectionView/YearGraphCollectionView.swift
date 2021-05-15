//
//  YearGraphCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 05.05.2021.
//

import UIKit

class YearGraphCollectionView: UICollectionView {
  var cells = [YearGraphCollectionModel]()
  
  init() {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    super.init(frame: .zero, collectionViewLayout: layout)
    backgroundColor = #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
    delegate = self
    dataSource = self
    register(YearGraphCollectionViewCell.self, forCellWithReuseIdentifier: YearGraphCollectionViewCell.reuseId)
    translatesAutoresizingMaskIntoConstraints = false
    layout.minimumLineSpacing = YearConstants.yearGraphMinimumLineSpacing
    contentInset = UIEdgeInsets(top: 0,
                                left: YearConstants.leftDistanceToView,
                                bottom: 0,
                                right: YearConstants.rightDistanceToView)
    showsHorizontalScrollIndicator = false
    showsVerticalScrollIndicator = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func set(cells: [YearGraphCollectionModel]) {
    self.cells = cells
  }
}

extension YearGraphCollectionView: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cells.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = dequeueReusableCell(withReuseIdentifier: YearGraphCollectionViewCell.reuseId, for: indexPath) as! YearGraphCollectionViewCell
    cell.yearLabel.text = cells[indexPath.row].year
    cell.chart.strokeEnd = cells[indexPath.row].strokeEnd
    return cell
  }
}

extension YearGraphCollectionView: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: YearConstants.yearGraphItemWidth, height: frame.height )
  }
}
