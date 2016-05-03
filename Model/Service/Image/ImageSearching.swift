//
//  ImageSearching.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import RxSwift

public protocol ImageSearching {
    func searchImages() -> Observable<ResponseEntity>
}