//
//  DashboardViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet var dashboardLabel: UILabel!
   
    private var dashboardCollectionView = DashboardCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(dashboardCollectionView)
        
        dashboardCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dashboardCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        dashboardCollectionView.topAnchor.constraint(equalTo: dashboardLabel.bottomAnchor, constant: 40).isActive = true
        dashboardCollectionView.heightAnchor.constraint(equalToConstant: 167).isActive = true
        
        dashboardCollectionView.set(cells: DashboardCollectionModel.fetchDashboard())
       
    }
    

 

}
