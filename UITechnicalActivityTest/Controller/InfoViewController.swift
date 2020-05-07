//
//  ViewController.swift
//  UITechnicalActivityTest
//
//  Created by Tauseef on 7/5/20.
//  Copyright © 2020 Movemedical. All rights reserved.
//

import UIKit


class InfoViewController: UIViewController {
    
    @IBOutlet var infoTableView: UITableView!
    let cellIdentifier = "InfoCell"
    var viewModel = InfoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTableView.tableFooterView = UIView(frame: .zero)
        infoTableView.rowHeight = UITableView.automaticDimension
        infoTableView.estimatedRowHeight = 100
        self.fetchSchoolInfo()
    }
    
    func fetchSchoolInfo() {
        self.viewModel.getSchoolInfo()
    }
}

extension InfoViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        switch section {
        case 0:
            title = "Books"
        case 1:
            title = "Phones"
        case 2:
            title = "Cars"
            
        default:
            title = "Books"
        }
        return title
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var itemCount = 0
        switch section {
        case 0:
            itemCount = self.viewModel.bookInfoArray.count
        case 1:
            itemCount = self.viewModel.phoneInfoArray.count
        case 2:
            itemCount = self.viewModel.carInfoArray.count
            
        default:
            itemCount = 0
        }
        return itemCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? InfoTableViewCell else {
            return UITableViewCell()
        }
        cell.section = indexPath.section
        switch indexPath.section {
        case 0:
            cell.itemInfo = self.viewModel.bookInfoArray[indexPath.row] as AnyObject
        case 1:
            cell.itemInfo = self.viewModel.phoneInfoArray[indexPath.row] as AnyObject
        case 2:
            cell.itemInfo = self.viewModel.carInfoArray[indexPath.row] as AnyObject
            
        default:
            cell.itemInfo = self.viewModel.bookInfoArray[indexPath.row] as AnyObject
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)        
    }
}


