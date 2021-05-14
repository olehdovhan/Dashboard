//
//  DashboardCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "DashboardCollectionViewCell"
    
    let view: TestVIew = {
        let view = TestVIew()
        view.backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        
        
        return view
    }()
  
    let percentsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 10)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 15)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let centerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 20)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    let targetLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 10)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let lessLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 10)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
        addSubview(view)
        addSubview(percentsLabel)
        addSubview(targetLabel)
        addSubview(centerLabel)
        addSubview(titleLabel)
        addSubview(lessLabel)
        
        
        view.heightAnchor.constraint(equalToConstant: 68).isActive = true
        view.widthAnchor.constraint(equalToConstant: 68).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor, constant: 25).isActive = true
        
        percentsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        percentsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
        
        targetLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        targetLabel.topAnchor.constraint(equalTo: topAnchor, constant: 126).isActive = true
        
        lessLabel.topAnchor.constraint(equalTo: topAnchor, constant: 126).isActive = true
        lessLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -31).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 37).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 21).isActive = true
        
        centerLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 21).isActive = true
        centerLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        
    }
    
    
    override func layoutSubviews() {
        
        self.layer.cornerRadius = 7
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
