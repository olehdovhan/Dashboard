//
//  CircularChartView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 01.05.2021.
//

import UIKit

class CircularChartView: UIView {
  var shapeLineWidth : CGFloat = 10
  var overShapeLineWidth : CGFloat = 10
  
  override func draw(_ rect: CGRect) {
    let shapeLayer = CAShapeLayer()
    shapeLayer.lineWidth = shapeLineWidth
    shapeLayer.lineCap = .round
    shapeLayer.fillColor = nil
    shapeLayer.strokeEnd = 1
    let color = UIColor(named: "shapeLayer")?.cgColor
    shapeLayer.strokeColor = color
    let overShapeLayer = CAShapeLayer()
    overShapeLayer.lineWidth = overShapeLineWidth
    overShapeLayer.lineCap = .round
    overShapeLayer.fillColor = nil
    overShapeLayer.strokeEnd = 1
    let colorOver = UIColor(named: "overShapeLayer")?.cgColor
    overShapeLayer.strokeColor = colorOver
    let diametr: CGFloat = min(bounds.height, bounds.width) - shapeLayer.lineWidth
    let y = self.bounds.height / 2 - diametr / 2
    let x = self.bounds.width / 2 - diametr / 2
    let  path = UIBezierPath(ovalIn: CGRect(x: x, y: y, width: diametr, height: diametr))
    let center = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
    let circulPath = UIBezierPath(arcCenter: center,
                                  radius: diametr / 2,
                                  startAngle: .pi / 2,
                                  endAngle: .pi + .pi / 2 ,
                                  clockwise: false)
    shapeLayer.path = path.cgPath
    overShapeLayer.path = circulPath.cgPath
    layer.addSublayer(shapeLayer)
    layer.addSublayer(overShapeLayer)
  }
}
