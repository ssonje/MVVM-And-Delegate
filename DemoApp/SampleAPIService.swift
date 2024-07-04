//
//  SampleAPIService.swift
//  DemoApp
//
//  Created by Sanket Sonje  on 04/07/24.
//

import Foundation

class SampleAPIService {

    func fetchData() -> [SampleDataModel] {
        // returning sample data
        let dataModel1 = SampleDataModel(label: "Sanket")
        let dataModel2 = SampleDataModel(label: "Sneha")
        let dataModel3 = SampleDataModel(label: "Anita")
        let dataModel4 = SampleDataModel(label: "Dilip")
        return [dataModel1, dataModel2, dataModel3, dataModel4]
    }
}
