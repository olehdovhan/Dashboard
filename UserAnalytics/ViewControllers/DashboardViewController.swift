//
//  DashboardViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardViewController: UIViewController {
  //MARK: - IBOutlet
  @IBOutlet var dashboardLabel: UILabel!
  @IBOutlet var dateTextField: UITextField! {
    didSet{
      dateTextField.attributedPlaceholder = NSAttributedString(string: "January 01 - 31",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-Regular",
                                                                                                                                                                       size: 10)!])
      dateTextField.font = UIFont(name: "Poppins-Regular", size: 10)
      dateTextField.textColor = .white
    }
  }
  //MARK: - Stubs
  var datesArray = ["January 01 - 31", "February 01 - 28", "March 01 - 31", "April 01 - 30", "May 01 - 31", "June 01 - 30","July 01 - 31",
                    "August 01 - 31", "September 01 - 30", "October 01 - 31", "November 01 - 30", "December 01 - 31"]
  var daysArray = ["January 01", "January 02", "January 03", "January 04", "January 05", "January 06", "January 07", "January 08", "January 09", "January 10"]
  var costsArray = ["$2,029", "$1,2", "$1,1", "$5,111", "$2,1", "$2,1","$2,029", "$1,2", "$1,1", "$5,111"]
  var selectedDate : String?
  
  lazy private var dashboardCollectionView = DashboardCollectionView(parrentVc: self)
  
  private var yearChartCollectionView = YearChartCollectionView()
  
  let tableview: UITableView = {
    let tv = UITableView()
    tv.backgroundColor = UIColor(named: "Background")
    tv.translatesAutoresizingMaskIntoConstraints = false
    return tv
  }()
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCollectionView()
    setupTableView()
    choiceDate()
    createToolbar()
  }
  
  func showNextViewController() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(identifier: "TotalUsersViewController")
    vc.modalPresentationStyle = .fullScreen
    self.present(vc, animated: true)
  }
  
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}
//MARK: - Private methods
extension DashboardViewController {
  private func setupCollectionView() {
    view.addSubview(dashboardCollectionView)
    dashboardCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    dashboardCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    dashboardCollectionView.topAnchor.constraint(equalTo: dashboardLabel.bottomAnchor, constant: 40).isActive = true
    dashboardCollectionView.heightAnchor.constraint(equalToConstant: 167).isActive = true
    dashboardCollectionView.set(cells: DashboardCollectionModel.fetchDashboard())
    view.addSubview(yearChartCollectionView)
    yearChartCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    yearChartCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    yearChartCollectionView.topAnchor.constraint(equalTo: dashboardCollectionView.bottomAnchor, constant: 31).isActive = true
    yearChartCollectionView.heightAnchor.constraint(equalToConstant: 37).isActive = true
    yearChartCollectionView.set(cells: YearChartCollectionModel.fetchYearGraph())
  }
  
  private func setupTableView() {
    tableview.delegate = self
    tableview.dataSource = self
    tableview.register(DayTableViewCell.self, forCellReuseIdentifier: "cellId")
    view.addSubview(tableview)
    NSLayoutConstraint.activate([
      tableview.topAnchor.constraint(equalTo: self.dateTextField.bottomAnchor,constant: 20),
      tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
    ])
  }
  
  private func choiceDate() {
    let elementPicker = UIPickerView()
    elementPicker.delegate = self
    dateTextField.inputView = elementPicker
    elementPicker.backgroundColor = UIColor(named: "Background")
  }
  
  private func createToolbar() {
    let toolbar = UIToolbar()
    toolbar.sizeToFit()
    let doneButton = UIBarButtonItem(title: "Done",
                                     style: .plain,
                                     target: self,
                                     action: #selector(dismissKeyboard))
    toolbar.setItems([doneButton], animated: true)
    toolbar.isUserInteractionEnabled = true
    dateTextField.inputAccessoryView = toolbar
    toolbar.tintColor = .white
    toolbar.barTintColor = UIColor(named: "Background")
  }
}

extension DashboardViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 37
  }
}

extension DashboardViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! DayTableViewCell
    cell.backgroundColor = UIColor(named: "Background")
    cell.dayLabel.text = daysArray[indexPath.row]
    cell.costLabel.text = costsArray[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return daysArray.count
  }
}

extension DashboardViewController: UIPickerViewDataSource, UIPickerViewDelegate {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return datesArray.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return datesArray[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    selectedDate = datesArray[row]
    dateTextField.text = selectedDate
  }
  
  func pickerView(_ pickerView: UIPickerView,
                  viewForRow row: Int,
                  forComponent component: Int,
                  reusing view: UIView?) -> UIView {
    var pickerViewLabel = UILabel()
    if let currentLabel = view as? UILabel {
      pickerViewLabel = currentLabel
    } else {
      pickerViewLabel = UILabel()
    }
    pickerViewLabel.textColor = .white
    pickerViewLabel.textAlignment = .center
    pickerViewLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 23)
    pickerViewLabel.text = datesArray[row]
    return pickerViewLabel
  }
}
