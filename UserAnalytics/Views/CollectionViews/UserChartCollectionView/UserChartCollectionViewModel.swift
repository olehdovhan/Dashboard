//
//  UserGraphCollectionViewModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import Foundation
import UIKit

struct UserChartCollectionViewModel {
  var year: String
  var strokeEnd: CGFloat
  
  static func fetchYearGraph() -> [UserChartCollectionViewModel] {
    let first = UserChartCollectionViewModel(year: "2012", strokeEnd: 0.44)
    let second = UserChartCollectionViewModel(year: "2013", strokeEnd: 0.27)
    let third = UserChartCollectionViewModel(year: "2014", strokeEnd: 0.94)
    let fourth = UserChartCollectionViewModel(year: "2015", strokeEnd: 0.44)
    let fifth = UserChartCollectionViewModel(year: "2016", strokeEnd: 0.77)
    let sixth = UserChartCollectionViewModel(year: "2017", strokeEnd: 0.44)
    let seventh = UserChartCollectionViewModel(year: "2018", strokeEnd: 0.61)
    return [first, second, third, fourth, fifth, sixth, seventh]
  }
}
