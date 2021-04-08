//
//  DataService.swift
//  Ba project
//
//  Created by JAESOON on 2021/02/27.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [BaConstruction] {
        
        let pathString = Bundle.main.path(forResource: "chinese", ofType: "json")
        
        guard pathString != nil else {
            
            return [BaConstruction]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            do {
                let BaData = try decoder.decode([BaConstruction].self, from: data)
                
                for r in BaData {
                    r.id = UUID()
                }
                
                return BaData
            }
            
            catch {
                print(error)
            }
            
        }
        
        catch {
            print(error)
        }
        
        return [BaConstruction]()
       
    }
    
    
}
