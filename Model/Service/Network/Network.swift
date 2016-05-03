//
//  Network.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import RxSwift
import Alamofire

public final class Network: Networking {
    
    public init() { }
    
    public func requestJSON(method: Alamofire.Method, url: String, parameters: [String : AnyObject]?)
        -> Observable<AnyObject> {
            return Observable.create { observer -> Disposable in
                let request = Alamofire.request(.GET, url, parameters: parameters)
                    .responseJSON { response in
                        switch response.result {
                        case .Success(let value):
                            observer.onNext(value)
                            observer.onCompleted()
                        case .Failure(let error):
                            observer.onError(error)
                        }
                }
                return AnonymousDisposable {
                    request.cancel()
                }
            }
    }
}