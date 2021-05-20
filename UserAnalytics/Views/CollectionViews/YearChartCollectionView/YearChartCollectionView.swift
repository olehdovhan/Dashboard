//
//  YearChartCollectionView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 05.05.2021.
//

import UIKit

class YearChartCollectionView: UICollectionView {
  var cells = [YearChartCollectionModel]()
  
  init() {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    super.init(frame: .zero, collectionViewLayout: layout)
    backgroundColor = UIColor(named: "Background")
    delegate = self
    dataSource = self
    register(YearChartCollectionViewCell.self, forCellWithReuseIdentifier: YearChartCollectionViewCell.reuseId)
    translatesAutoresizingMaskIntoConstraints = false
    layout.minimumLineSpacing = YearConstants.yearChartMinimumLineSpacing
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
  
  func set(cells: [YearChartCollectionModel]) {
    self.cells = cells
  }
}

extension YearChartCollectionView: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cells.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = dequeueReusableCell(withReuseIdentifier: YearChartCollectionViewCell.reuseId, for: indexPath) as! YearChartCollectionViewCell
    cell.yearLabel.text = cells[indexPath.row].year
    cell.chart.strokeEnd = cells[indexPath.row].strokeEnd
    return cell
  }
}

extension YearChartCollectionView: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: YearConstants.yearChartItemWidth, height: frame.height )
  }
}
