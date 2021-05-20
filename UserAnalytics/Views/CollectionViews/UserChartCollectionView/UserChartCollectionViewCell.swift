//
//  UserGraphCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class UserChartCollectionViewCell: UICollectionViewCell {
  static let reuseId = "UserChartCollectionViewCell"
  let chart: ChartView = {
    let view = ChartView()
    view.backgroundColor = UIColor(named: "Background")
    view.translatesAutoresizingMaskIntoConstraints = false
    view.contentMode = .scaleAspectFit
    return view
  }()
  let yearLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont(name: "Poppins", size: 10)
    label.textAlignment = .center
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor(named: "Background")
    addSubview(chart)
    addSubview(yearLabel)
    chart.topAnchor.constraint(equalTo: topAnchor).isActive = true
    chart.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    chart.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    chart.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -21).isActive = true
    yearLabel.topAnchor.constraint(equalTo: chart.bottomAnchor, constant: 6).isActive = true
    yearLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    yearLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    yearLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  override func layoutSubviews() {
    self.layer.cornerRadius = 7
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

struct UserChartConstants {
  static let leftDistanceToView: CGFloat = 29
  static let rightDistanceToView: CGFloat = 29
  static let userChartMinimumLineSpacing: CGFloat = 25
  static let userChartItemWidth = (UIScreen.main.bounds.width - UserChartConstants.leftDistanceToView - UserChartConstants.rightDistanceToView - (UserChartConstants.userChartMinimumLineSpacing * 6) ) / 7
}
