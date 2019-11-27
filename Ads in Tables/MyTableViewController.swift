//
//  MyTableViewController.swift
//  Ads in Tables
//
//  Created by Steven Berard on 11/26/19.
//  Copyright © 2019 Steven Berard. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var dataArray = [String]()
    var adArray = [Int]()
    
    var realArray = [Any]()

    override func viewDidLoad() {
        super.viewDidLoad()

        for index in 1 ... 10 {
            dataArray.append("New Object: \(index)")
        }
        
        for index in 1 ... 3 {
            adArray.append(index)
        }
        
        for (index, data) in dataArray.enumerated() {
            if index % 3 == 0 {
                realArray.append(adArray[0])
            }
            
            realArray.append(data)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count + dataArray.count / 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 3 == 0 {
            
            print("We should show an ad: \(indexPath.row)")
            print("This should be interesting: \(indexPath.row / 3)")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Ad Cell") as? AdTableViewCell else {
                return UITableViewCell()
            }
            
            let ad = adArray[0]
            
            cell.nameLabel.text = "\(ad)"
            
            return cell
        }
        
        let realRow = indexPath.row - 1 - (indexPath.row / 3)
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Regular Cell") as? RegularTableViewCell else {
            return UITableViewCell()
        }
        
        let data = dataArray[realRow]
        
        cell.nameLabel.text = data
        
        return cell
    }
}
