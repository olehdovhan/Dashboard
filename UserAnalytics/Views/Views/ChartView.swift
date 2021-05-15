//
//  ChartView.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 06.05.2021.
//

import UIKit

class ChartView: UIView {
  var strokeEnd : CGFloat = 0.5
  var shapeLineWidth : CGFloat = 3
  
  override func draw(_ rect: CGRect) {
    let shapeLayer = CAShapeLayer()
    shapeLayer.lineWidth = shapeLineWidth
    shapeLayer.lineCap = .round
    shapeLayer.fillColor = nil
    shapeLayer.strokeEnd = 1
    let color = #colorLiteral(red: 0.2705882353, green: 0.2784313725, blue: 0.3607843137, alpha: 1).cgColor
    shapeLayer.strokeColor = color
    let overShapeLayer = CAShapeLayer()
    overShapeLayer.lineWidth = shapeLineWidth
    overShapeLayer.lineCap = .round
    overShapeLayer.fillColor = nil
    overShapeLayer.strokeEnd = strokeEnd
    let colorOver = #colorLiteral(red: 0.1284031272, green: 0.6345581412, blue: 0.9573553205, alpha: 1).cgColor
    overShapeLayer.strokeColor = colorOver
    let y = self.bounds.height / 2
    let x = self.bounds.width / 2
    let path = UIBezierPath()
    path.move(to: CGPoint(x: x, y: y + y ))
    path.addLine(to: CGPoint(x: x , y: y - y + (shapeLayer.lineWidth / 2)))
    shapeLayer.path = path.cgPath
    overShapeLayer.path = path.cgPath
    layer.addSublayer(shapeLayer)
    layer.addSublayer(overShapeLayer)
  }
}
