//
//  UserGraphCollectionViewModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import Foundation

import UIKit


struct UserGraphCollectionViewModel {
   
    var year: String
    var strokeEnd: CGFloat

    
    static func fetchYearGraph() -> [UserGraphCollectionViewModel] {
        let first = UserGraphCollectionViewModel(year: "2012", strokeEnd: 0.44)
        let second = UserGraphCollectionViewModel(year: "2013", strokeEnd: 0.27)
        let third = UserGraphCollectionViewModel(year: "2014", strokeEnd: 0.94)
        let fourth = UserGraphCollectionViewModel(year: "2015", strokeEnd: 0.44)
        let fifth = UserGraphCollectionViewModel(year: "2016", strokeEnd: 0.77)
        let sixth = UserGraphCollectionViewModel(year: "2017", strokeEnd: 0.44)
        let seventh = UserGraphCollectionViewModel(year: "2018", strokeEnd: 0.61)

        return [first, second, third, fourth, fifth, sixth, seventh]
    }
}

struct UserGraphConstants {
    static let leftDistanceToView: CGFloat = 29
    static let rightDistanceToView: CGFloat = 29
    static let userGraphMinimumLineSpacing: CGFloat = 25
    static let userGraphItemWidth = (UIScreen.main.bounds.width - UserGraphConstants.leftDistanceToView - UserGraphConstants.rightDistanceToView - (UserGraphConstants.userGraphMinimumLineSpacing * 6) ) / 7
    
}
