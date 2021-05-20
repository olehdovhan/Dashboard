//
//  TotalUsersViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 08.05.2021.
//

import UIKit

class TotalUsersViewController: UIViewController {
  private var totalUsersCollectionView = TotalUsersCollectionView()
  private var userChartCollectionView = UserChartCollectionView()
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(totalUsersCollectionView)
    totalUsersCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    totalUsersCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    totalUsersCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 113 ).isActive = true
    totalUsersCollectionView.heightAnchor.constraint(equalToConstant: 261).isActive = true
    totalUsersCollectionView.set(cells: TotalUsersCollectionModel.fetchDashboard())
    view.addSubview(userChartCollectionView)
    userChartCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    userChartCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    userChartCollectionView.topAnchor.constraint(greaterThanOrEqualTo:totalUsersCollectionView.bottomAnchor, constant: 100).isActive = true
    userChartCollectionView.heightAnchor.constraint(equalToConstant: 185).isActive = true
    userChartCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -48).isActive = true
    userChartCollectionView.set(cells: UserChartCollectionViewModel.fetchYearGraph())
  }
  
  @IBAction func closeVCButton(_ sender: Any) {
    dismiss(animated: true)
  }
}
