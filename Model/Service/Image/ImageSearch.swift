//
//  ImageService.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import RxSwift
import Himotoki

public final class ImageSearch: ImageSearching {
    
    private let network: Networking
    
    public init(network: Networking) {
        self.network = network
    }
    
    public func searchImages() -> Observable<ResponseEntity> {
        return network.requestJSON(.GET, url: Constants.API_URL, parameters: Constants.REQUEST_PARAMETERS).map { json in
            let response: ResponseEntity = try! decodeValue(json)
            return response
        }
    }
}
