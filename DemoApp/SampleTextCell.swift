//
//  SampleTextCell.swift
//  DemoApp
//
//  Created by Sanket Sonje  on 04/07/24.
//

import Foundation
import UIKit

class SampleTextCell: UITableViewCell {

    lazy var sampleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func configure(_ data: SampleDataModel) {
        sampleLabel.text = data.label
        contentView.addSubview(sampleLabel)
        setupConstraints()
    }

    private func setupConstraints() {
        sampleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        sampleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
}
