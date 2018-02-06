//
//  ViewController.swift
//  DependencyInjection
//
//  Created by htomcat on 2018/01/30.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var fetcher: Fetcher?
    private var countries = [Country]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        fetcher?.fetch {
            if let countries = $0 {
                self.countries = countries
            } else {
                // Error
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.name
        return cell
    }
}

