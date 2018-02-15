//
//  ViewController.swift
//  MVVM
//
//  Created by Farhad on 2/6/18.
//  Copyright © 2018 Farhad. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let viewModel = MovieViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        viewModel.fetchMovies()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movies.value.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        let movie = viewModel.movies.value[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.imdbRate
        return cell
    }
}

extension ViewController {
    func bindViewModel() {
        viewModel.movies.bind { _ in
            self.tableView.reloadData()
        }
    }
}
