//
//  TotalUsersCollectionModel.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import Foundation

import UIKit

struct TotalUsersCollectionModel {
   
    var percents: String
    var title: String
    var description: String
    var target: String
    var less: String
    
    static func fetchDashboard() -> [TotalUsersCollectionModel] {
        let firstItem = TotalUsersCollectionModel( percents: "50%", title: "Total Users Now", description: "Lorem Ipsum is simply dummy text of the print ing and type setting industry. Lorem Ipsum has been the industry's.",  target: "Target Users 2000 user", less: "less 1000 user")
        let secondItem = TotalUsersCollectionModel( percents: "49%", title: "Active Users",description: "Lorem Ipsum is simply dummy text of the print ing and type setting industry. Lorem Ipsum has been the industry's.", target: "Target Users 1600 user", less: "less 400 unactive users")
        return [firstItem, secondItem]
    }
}

struct UserConstants {
    static let leftDistanceToView: CGFloat = 29
    static let rightDistanceToView: CGFloat = 29
    static let totalUsersMinimumLineSpacing: CGFloat = 29
    static let totalUsersItemWidth = (UIScreen.main.bounds.width - UserConstants.leftDistanceToView - UserConstants.rightDistanceToView)
    
    
}
