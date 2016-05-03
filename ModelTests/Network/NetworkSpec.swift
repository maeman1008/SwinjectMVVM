//
//  NetworkSpec.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import Quick
import Nimble
import RxSwift
@testable import Model

class NetworkSpec: QuickSpec {
    override func spec() {
        
        var network: Network!
        
        beforeEach {
            network = Network()
        }
        
        describe("JSON") {
            it("eventually gets JSON data as specified with parameters.") {
                
                var json: [String: AnyObject]? = nil
                
                let url = "https://httpbin.org/get"
                let disposeBag = DisposeBag()
                
                network.requestJSON(.GET, url: url, parameters: ["a": "b", "x": "y"])
                    .subscribe(
                        onNext: { json = $0 as? [String: AnyObject]
                    }).addDisposableTo(disposeBag)
                
                expect(json).toEventuallyNot(beNil(), timeout: 5)
                expect((json?["args"] as? [String: AnyObject])?["a"] as? String)
                    .toEventually(equal("b"), timeout: 5)
                expect((json?["args"] as? [String: AnyObject])?["x"] as? String)
                    .toEventually(equal("y"), timeout: 5)
            }
        }
    
    }
}