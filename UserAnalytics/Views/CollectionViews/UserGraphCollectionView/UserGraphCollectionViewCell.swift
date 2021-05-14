//
//  UserGraphCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class UserGraphCollectionViewCell: UICollectionViewCell {
    
    
    static let reuseId = "UserGraphCollectionViewCell"
    
    let view: GraphView = {
        let view = GraphView()
        view.backgroundColor = #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        
        
        return view
    }()
    
    let yearLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 10)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
        addSubview(view)
        addSubview(yearLabel)
        
        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -21).isActive = true
        
        yearLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 6).isActive = true
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
    

