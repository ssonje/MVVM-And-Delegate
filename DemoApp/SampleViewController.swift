//
//  ContentHuggingVC.swift
//  DemoApp
//
//  Created by Sanket Sonje  on 27/05/24.
//

import Foundation
import UIKit

class SampleViewController: UIViewController {

    // MARK: - Properties

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    private var viewModel = SampleViewModel()

    // MARK: - Init

    init() {
        super.init(nibName: nil, bundle: nil)
        viewModel.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewModel.fetchData()
    }

    // MARK: - Private Helpers

    private func setup() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.register(SampleTextCell.self, forCellReuseIdentifier: "CellID")
        setupConstraints()
    }

    private func setupConstraints() {
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

// MARK: - UITableViewDelegate

extension SampleViewController: UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentData = viewModel.data[indexPath.row]
        let newData = SampleDataModel(label: "New \(currentData.label)")
        viewModel.updateData(newData, index: indexPath.row)
    }
}

// MARK: - UITableViewDataSource

extension SampleViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as! SampleTextCell
        cell.configure(viewModel.data[indexPath.row])
        return cell
    }
}

// MARK: - SampleViewControllerDelegate

extension SampleViewController: SampleViewControllerDelegate {

    func updateData() {
        self.tableView.reloadData()
    }
}
