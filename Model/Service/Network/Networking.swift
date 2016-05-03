//
//  Networking.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import RxSwift
import Alamofire

public protocol Networking {
    func requestJSON(method: Alamofire.Method,url: String, parameters: [String : AnyObject]?)
        -> Observable<AnyObject>
}