//
//  BaModel.swift
//  Ba project
//
//  Created by JAESOON on 2021/02/27.
//

import Foundation

class BaModel: ObservableObject {
    
    @Published var Baconstructions = [BaConstruction]()
    
    init() {
        
        self.Baconstructions = DataService.getLocalData()
    }
}
