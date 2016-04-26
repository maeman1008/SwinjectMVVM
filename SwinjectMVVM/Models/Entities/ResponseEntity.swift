//
//  ResponseEntity.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/27.
//  Copyright © 2016年 ika. All rights reserved.
//

import Himotoki

public struct ResponseEntity {
    public let totalCount: Int64
    public let images: [ImageEntity]
}

extension ResponseEntity: Decodable {
    public static func decode(e: Extractor) throws -> ResponseEntity {
        return try ResponseEntity(
            totalCount: e <| "totalHits",
            images: e <|| "hits"
        )
    }
}