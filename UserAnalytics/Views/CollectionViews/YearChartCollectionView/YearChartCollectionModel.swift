//
//  YearGraphCollectionModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 05.05.2021.
//

import Foundation
import UIKit

struct YearChartCollectionModel {
  var year: String
  var strokeEnd: CGFloat
  
  static func fetchYearGraph() -> [YearChartCollectionModel] {
    let first = YearChartCollectionModel(year: "2012", strokeEnd: 0.44)
    let second = YearChartCollectionModel(year: "2013", strokeEnd: 0.27)
    let third = YearChartCollectionModel(year: "2014", strokeEnd: 0.94)
    let fourth = YearChartCollectionModel(year: "2015", strokeEnd: 0.44)
    let fifth = YearChartCollectionModel(year: "2016", strokeEnd: 0.77)
    let sixth = YearChartCollectionModel(year: "2017", strokeEnd: 0.44)
    let seventh = YearChartCollectionModel(year: "2018", strokeEnd: 0.61)
    return [first, second, third, fourth, fifth, sixth, seventh]
  }
}
