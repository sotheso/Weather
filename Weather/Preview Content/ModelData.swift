//
//  ModelData.swift
//  Weather
//
//  Created by Sothesom on 30/11/1403.
//

import Foundation

var preiviewData: ResponseBody = load("ModelData.json")

func load<T: Decodable> (_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename)")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) from main \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
