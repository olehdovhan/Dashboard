//
//  dashboardCollectionModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import Foundation

import UIKit


struct DashboardCollectionModel {
   
    var percents: String    
    var title: String
    var center: String
    var target: String
    var less: String
    
    static func fetchDashboard() -> [DashboardCollectionModel] {
        let firstItem = DashboardCollectionModel( percents: "50%", title: "Total Users Now", center: "1000 User",  target: "Target Users 2000 user", less: "less 1000 user")
        let secondItem = DashboardCollectionModel( percents: "49%", title: "Active Users",center: "2000 User", target: "Target Users 1600 user", less: "less 400 unactive users")
        return [firstItem, secondItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 29
    static let rightDistanceToView: CGFloat = 29
    static let dashboardMinimumLineSpacing: CGFloat = 17
    static let dashboardItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView)
    
    
}
