//
//  dashboardCollectionModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import Foundation

import UIKit


struct DashboardCollectionModel {
    var image: UIImage
    var percents: String
    var title: String
    var target: String
    var less: String
    
    static func fetchDashboard() -> [DashboardCollectionModel] {
        let firstItem = DashboardCollectionModel(image: UIImage(named: "person")!, percents: "50%", title: "Total Users Now", target: "Target Users 2000 user", less: "less 1000 user")
        let secondItem = DashboardCollectionModel(image: UIImage(named: "notification")!, percents: "80%", title: "Active Users", target: "Target Users 1600 user", less: "less 400 unactive users")
        return [firstItem, secondItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 29
    static let rightDistanceToView: CGFloat = 29
    static let dashboardMinimumLineSpacing: CGFloat = 17
    static let dashboardItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView)
    
    
}
