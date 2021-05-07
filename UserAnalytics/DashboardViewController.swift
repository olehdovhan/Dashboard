//
//  DashboardViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 30.04.2021.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet var dashboardLabel: UILabel!
    @IBOutlet var dateTextField: UITextField! {
        didSet{  dateTextField.attributedPlaceholder = NSAttributedString(string: "January 01 - 31",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 10)! ])
            dateTextField.font = UIFont(name: "Poppins-Regular", size: 10)
            dateTextField.textColor = .white
        }
    }
    
    
    var dates = ["January 01 - 31", "February 01 - 28", "March 01 - 31", "April 01 - 30", "May 01 - 31", "June 01 - 30","July 01 - 31",
                 "August 01 - 31", "September 01 - 30", "October 01 - 31", "November 01 - 30", "December 01 - 31"]
    var selectedDate : String?
    private var dashboardCollectionView = DashboardCollectionView()
    
    private var yearGraphCollectionView = YearGraphCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(dashboardCollectionView)
        
        dashboardCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dashboardCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        dashboardCollectionView.topAnchor.constraint(equalTo: dashboardLabel.bottomAnchor, constant: 40).isActive = true
        dashboardCollectionView.heightAnchor.constraint(equalToConstant: 167).isActive = true
        
        dashboardCollectionView.set(cells: DashboardCollectionModel.fetchDashboard())
        
        view.addSubview(yearGraphCollectionView)
        yearGraphCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        yearGraphCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        yearGraphCollectionView.topAnchor.constraint(equalTo: dashboardCollectionView.bottomAnchor, constant: 31).isActive = true
        
        yearGraphCollectionView.heightAnchor.constraint(equalToConstant: 37).isActive = true
        
        yearGraphCollectionView.set(cells: YearGraphCollectionModel.fetchYearGraph())
        
        
        
        
        
        choiceDate()
        createToolbar()

     
    }
    

 
    func choiceDate() {
        
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        dateTextField.inputView = elementPicker
        
        // Costamization
        elementPicker.backgroundColor = #colorLiteral(red: 0.2832400501, green: 0.3001738489, blue: 0.3875153065, alpha: 1)
    }
    
    func createToolbar() {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        dateTextField.inputAccessoryView = toolbar
        
        // Castomization
        toolbar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        toolbar.barTintColor = #colorLiteral(red: 0.1570699513, green: 0.1604697406, blue: 0.2419916391, alpha: 1)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    
    
}

extension DashboardViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dates.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dates[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedDate = dates[row]
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
        pickerViewLabel.text = dates[row]
        
        return pickerViewLabel
    }
    
    
}
