//
//  ImageSearchTableViewCellModeling.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/30.
//  Copyright © 2016年 ika. All rights reserved.
//

import Foundation

public protocol ImageSearchTableViewCellModeling {
    var id: UInt64 { get }
    var pageImageSizeText:  String { get }
    var tagText: String { get }
}