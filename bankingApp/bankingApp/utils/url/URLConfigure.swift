//
//  UrlConfigure.swift
//  bankingApp
//
//  Created by miguel toledo on 14/09/22.
//

import Foundation

import UIKit


class URLconfigure {
     var urlComponent = URLComponents()
    
    
    init(){
        //Revisar si se pueden cargar desde un archivo .env , .properties etc
        self.urlComponent.scheme = "http"
        self.urlComponent.host = "localhost"
        self.urlComponent.port = 5000
    }
    
    func addParam(param:String){
        self.urlComponent.path+="/\(param)"
    }
    

    func setPath(path:String){
        self.urlComponent.path=path
        
    }
    
    func getURL() -> URL?{
        return self.urlComponent.url
    }

}

