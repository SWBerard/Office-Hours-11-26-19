//
//  MainViewController.swift
//  Ads in Tables
//
//  Created by Steven Berard on 11/26/19.
//  Copyright © 2019 Steven Berard. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let data: String
    
    @IBOutlet weak var dataLabel: UILabel!
    
    init(data: String) {
        self.data = data
        super.init(nibName: "MainViewController", bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = data
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
