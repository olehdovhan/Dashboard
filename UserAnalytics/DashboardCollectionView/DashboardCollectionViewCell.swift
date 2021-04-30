//
//  DashboardCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "DashboardCollectionViewCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
