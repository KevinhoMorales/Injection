//
//  HomeViewController.swift
//  Injection
//
//  Created by Kevinho Morales on 17/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getData()
        // Do any additional setup after loading the view.
    }
    
    private func setUpView() {
        let cell = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
    }
    
    private func getData() {
        viewModel.manager.retrieveData { [self] homeModel in
            DispatchQueue.main.async {
                viewModel.homeModel = homeModel
                tableView.reloadData()
            }
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.homeModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableViewCell
        let homeModel = viewModel.homeModel[indexPath.row]
        cell.setUpCell(homeModel: homeModel)
        return cell
    }
}
