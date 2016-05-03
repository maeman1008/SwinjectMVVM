//
//  Constants.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/28.
//  Copyright © 2016年 ika. All rights reserved.
//

import Foundation

internal struct Constants {
 
    internal static let API_URL = "https://pixabay.com/api/"
    
    internal static let REQUEST_PARAMETERS: [String: AnyObject] =
        [
            "key": Config.API_KEY,
            "image_type": "photo",
            "safesearch": true,
            "per_page": 50,
        ]
}

extension Constants {
    private struct Config {
        private static let API_KEY = ""
    }
}