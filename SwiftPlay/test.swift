//
//  test.swift
//  SwiftPlay
//
//  Created by jeroldliu on 2020/5/31.
//  Copyright © 2020 jeroldliu. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI



class Person: NSObject {
    var nameNow: String? {
        willSet {
            self.nameNow = newValue
        }
    }
    
    //计算属性
    var now: String? {
        set(wakadika) {
            self.nameNow = wakadika! + "door"
        }
        
        get {
            return self.nameNow
        }
        
    }
    
    //带监视器的普通属性
    var love: NSInteger? {
        willSet {
            
        }
        
        didSet {
            
        }
    }
    
    
    var residenc:Residenc?
    var age:Int  = 111;
    func getWords(stringTemp:String) -> String {
        let age:NSInteger = 15;
        let finalString:String = "idayede \(now) \(age)";
        return finalString;
    }
    
    func test() -> Void  {
        let john = Person()
        let numberOfJohn = john.residenc?.numberOfRooms
    }
}

class Residenc {
    var numberOfRooms = 1
    
}

class leoOneViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

class swiftFeatureClass {
    //请求
    func requestURL(urlString:String?) -> Void {
        if urlString?.count == 0 {
            return
        }
        let url:URL = URL.init(string: urlString ?? "")!
        let request:URLRequest = URLRequest.init(url: url)
        let urlSession:URLSession = URLSession.shared
        
        urlSession.dataTask(with: request) { (data, response, error) in
            
        }
    }
    
    //block
    
}


