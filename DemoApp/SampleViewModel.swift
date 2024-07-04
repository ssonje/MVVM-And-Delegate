//
//  SampleViewModel.swift
//  DemoApp
//
//  Created by Sanket Sonje  on 04/07/24.
//

import Foundation

class SampleViewModel {

    weak var delegate: SampleViewControllerDelegate?
    var data = [SampleDataModel]()
    let apiService = SampleAPIService()

    func fetchData() {
        data = apiService.fetchData()
        delegate?.updateData()
    }

    func updateData(_ data: SampleDataModel, index: Int) {
        self.data[index] = data
        delegate?.updateData()
    }
}
