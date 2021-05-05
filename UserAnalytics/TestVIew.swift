//
//  TestVIew.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 01.05.2021.
//

import UIKit

class TestVIew: UIView {


    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = 10
        shapeLayer.lineCap = .round
        shapeLayer.fillColor = nil
        shapeLayer.strokeEnd = 1
        let color = #colorLiteral(red: 0.2705882353, green: 0.2784313725, blue: 0.3607843137, alpha: 1).cgColor
        shapeLayer.strokeColor = color
        
         let overShapeLayer = CAShapeLayer()
        overShapeLayer.lineWidth = 10
        overShapeLayer.lineCap = .round
        overShapeLayer.fillColor = nil
        overShapeLayer.strokeEnd = 1
        let colorOver = #colorLiteral(red: 0.1284031272, green: 0.6345581412, blue: 0.9573553205, alpha: 1).cgColor
        overShapeLayer.strokeColor = colorOver
        
        
        let diametr: CGFloat = min(bounds.height, bounds.width) - shapeLayer.lineWidth
        
     
        
        
        let y = self.bounds.height / 2 - diametr / 2
        let x = self.bounds.width / 2 - diametr / 2

        let  path = UIBezierPath(ovalIn: CGRect(x: x, y: y, width: diametr, height: diametr))
        
        let center = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        let circulPath = UIBezierPath(arcCenter: center, radius: diametr / 2, startAngle: .pi / 2, endAngle: .pi + .pi / 2 , clockwise: false)
        
        shapeLayer.path = path.cgPath
        overShapeLayer.path = circulPath.cgPath
        
        
      
        
        
        layer.addSublayer(shapeLayer)
        
        
     
          layer.addSublayer(overShapeLayer)
        
        
        
        // Drawing code
    }


}
