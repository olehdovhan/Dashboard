//
//  TotalUsersCollectionViewCell.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class TotalUsersCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "TotalUsersCollectionViewCell"
    
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse")
        image.translatesAutoresizingMaskIntoConstraints = false
       
        
        
        return image
    }()
    
    let secondImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse")
        image.translatesAutoresizingMaskIntoConstraints = false
       
        
        
        return image
    }()
    
    
    
    
    let circularChart: CircularChartView = {
        let view = CircularChartView()
        view.backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        
        
        return view
    }()
  
    let percentsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 20)
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
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 10)
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = .zero
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    let targetLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 9)
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let lessLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins", size: 10)
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
        addSubview(circularChart)
        addSubview(percentsLabel)
        addSubview(targetLabel)
        addSubview(descriptionLabel)
        addSubview(titleLabel)
        addSubview(lessLabel)

        addSubview(image)
        addSubview(secondImage)

        
        circularChart.heightAnchor.constraint(equalToConstant: 120).isActive = true
        circularChart.widthAnchor.constraint(equalToConstant: 120).isActive = true
        circularChart.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26).isActive = true
        circularChart.topAnchor.constraint(equalTo: topAnchor, constant: 58).isActive = true
        
        percentsLabel.centerXAnchor.constraint(equalTo: circularChart.centerXAnchor).isActive = true
        percentsLabel.centerYAnchor.constraint(equalTo: circularChart.centerYAnchor).isActive = true
        
        targetLabel.widthAnchor.constraint(equalToConstant: 119).isActive = true
        targetLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -9).isActive = true
        targetLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -112).isActive = true
        
        lessLabel.widthAnchor.constraint(equalToConstant: 119).isActive = true
        lessLabel.topAnchor.constraint(equalTo: targetLabel.bottomAnchor, constant: 9).isActive = true
        lessLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -9).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 19).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26).isActive = true
        
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -36).isActive = true
        
        
        
        image.widthAnchor.constraint(equalToConstant: 10).isActive = true
        image.heightAnchor.constraint(equalToConstant: 10).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 137).isActive = true
        image.trailingAnchor.constraint(equalTo: lessLabel.leadingAnchor, constant: -8).isActive = true
        
        secondImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
        secondImage.heightAnchor.constraint(equalToConstant: 10).isActive = true
        secondImage.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 12).isActive = true
        secondImage.trailingAnchor.constraint(equalTo: lessLabel.leadingAnchor, constant: -8).isActive = true
        
    }
    
    
    override func layoutSubviews() {
        
        self.layer.cornerRadius = 12
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
    
    
    
    
    
    

