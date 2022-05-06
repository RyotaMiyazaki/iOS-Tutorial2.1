//
//  CovidCaseModel.swift
//  tutorial
//
//  Created by Aphananthe on 2022/05/06.
//

import Foundation

struct CovidCaseModel: Codable {
    
    let name: String
    let cases: Int
    let deaths: Int

    enum CodingKeys: String, CodingKey {
        case name = "name_ja"
        case cases
        case deaths
    }

}
