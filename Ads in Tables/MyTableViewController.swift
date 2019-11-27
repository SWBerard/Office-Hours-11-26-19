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

        for index in 1 ... 100 {
            dataArray.append("New Object: \(index)")
        }
        
        for index in 1 ... 3 {
            adArray.append(index)
        }
        
        var count = 0
        
        for (index, data) in dataArray.enumerated() {
            if index % 3 == 0 && index != 0 {
                realArray.append(adArray[count])
                count += 1
                count = count % adArray.count
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
        
        return realArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let data = realArray[indexPath.row] as? String {
            // Regular Cell
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Regular Cell") as? RegularTableViewCell else {
                return UITableViewCell()
            }
            
            cell.nameLabel.text = data
            
            return cell
        }
        else if let ad = realArray[indexPath.row] as? Int {
            // Ad Cell
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Ad Cell") as? AdTableViewCell else {
                return UITableViewCell()
            }
            
            cell.nameLabel.text = "\(ad)"
            
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}
