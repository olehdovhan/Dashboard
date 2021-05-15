//
//  YearGraphCollectionModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 05.05.2021.
//

import Foundation
import UIKit

struct YearGraphCollectionModel {
  var year: String
  var strokeEnd: CGFloat
  
  static func fetchYearGraph() -> [YearGraphCollectionModel] {
    let first = YearGraphCollectionModel(year: "2012", strokeEnd: 0.44)
    let second = YearGraphCollectionModel(year: "2013", strokeEnd: 0.27)
    let third = YearGraphCollectionModel(year: "2014", strokeEnd: 0.94)
    let fourth = YearGraphCollectionModel(year: "2015", strokeEnd: 0.44)
    let fifth = YearGraphCollectionModel(year: "2016", strokeEnd: 0.77)
    let sixth = YearGraphCollectionModel(year: "2017", strokeEnd: 0.44)
    let seventh = YearGraphCollectionModel(year: "2018", strokeEnd: 0.61)
    return [first, second, third, fourth, fifth, sixth, seventh]
  }
}
