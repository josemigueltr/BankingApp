//
//  FecthApi.swift
//  bankingApp
//
//  Created by miguel toledo on 14/09/22.
//

import Foundation
import UIKit

class  RequestPetition{
    

    
    static func sendGetRequest(urlData:URLconfigure, completionHandler: @escaping (Result<(Data, URLResponse?), Error>) -> Void)  {
        guard let url = urlData.getURL() else {
            completionHandler(.failure("URL incorrecta" as! Error))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("No se pudo realizar la peticion \(error.localizedDescription)")
            } else {
                guard let data = data else {
                    return
                }
                //return tuple with (Data,Response) as a succes result
                 completionHandler(.success((data,response)))
            }
        }
        task.resume()
    }
    
    
    
    
    
    static func sendPostRequest<T:Codable>(urlData: URLconfigure, objectData: T, then completionHandler: @escaping (Result<Data, Error>) -> Void) {
        guard let url = urlData.getURL() else {
            completionHandler(.failure("URL incorrecta" as! Error))
            return
        }
       
        //convert objet to json
        guard let jsonDataBody = try? JSONEncoder().encode(objectData) else {
            print("Error al tratar de serializar el objeto")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // the request is JSON
        request.setValue("application/json", forHTTPHeaderField: "Accept") // the response expected to be in JSON format
        request.httpBody = jsonDataBody
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("No se pudo realizar la peticion \(error.localizedDescription)")
            } else {
                guard let data = data else {
                    return
                }
                completionHandler(.success(data))
        }
    
    }
        task.resume()
}

}
