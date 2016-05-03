//
//  ImageSearchTableViewCellModel.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/30.
//  Copyright © 2016年 ika. All rights reserved.
//

import Foundation
import Model

public final class ImageSearchTableViewCellModel: ImageSearchTableViewCellModeling {
    
    public let id: UInt64
    public let pageImageSizeText: String
    public let tagText: String
    
    internal init(image: ImageEntity) {
        id = image.id
        pageImageSizeText = "\(image.pageImageWidth) x \(image.pageImageHeight)"
        tagText = image.tags.joinWithSeparator(", ")
    }
}