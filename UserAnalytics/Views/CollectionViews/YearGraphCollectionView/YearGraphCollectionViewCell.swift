//
//  YearGraphCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 06.05.2021.
//

import UIKit

class YearGraphCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "YearGraphCollectionViewCell"
    
    let chart: ChartView = {
        let view = ChartView()
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
        addSubview(chart)
        addSubview(yearLabel)
        
        chart.topAnchor.constraint(equalTo: topAnchor).isActive = true
        chart.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        chart.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        chart.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18).isActive = true
        
        yearLabel.topAnchor.constraint(equalTo: chart.bottomAnchor, constant: 4).isActive = true
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
