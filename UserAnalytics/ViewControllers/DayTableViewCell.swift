//
//  DayCellTableViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 07.05.2021.
//

import UIKit

class DayTableViewCell: UITableViewCell {
  let image: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "Ellipse")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  let dayLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont(name: "Poppins-Regular", size: 14)
    label.textAlignment = .center
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let costLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont(name: "Poppins", size: 13)
    label.textAlignment = .right
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    addSubview(image)
    addSubview(dayLabel)
    addSubview(costLabel)
    image.widthAnchor.constraint(equalToConstant: 6).isActive = true
    image.heightAnchor.constraint(equalToConstant: 6).isActive = true
    image.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
    image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35).isActive = true
    dayLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
    dayLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 14).isActive = true
    dayLabel.heightAnchor.constraint(equalToConstant: 19).isActive = true
    dayLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
    costLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
    costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -37).isActive = true
    costLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
    costLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
