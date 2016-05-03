//
//  ImageSearchTableViewModel.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/30.
//  Copyright © 2016年 ika. All rights reserved.
//

import Foundation
import Model
import RxSwift

public final class ImageSearchTableViewModel: ImageSearchTableViewModeling {
    
    let disposalBag = DisposeBag()
    
    private let imageSearch: ImageSearching
    
    public var cellModels = PublishSubject<[ImageSearchTableViewCellModeling]>()
    
    public init(imageSearch: ImageSearching) {
        self.imageSearch = imageSearch
    }
    
    public func startSearch() {
        imageSearch.searchImages()
            .observeOn(MainScheduler.instance)
            .map { response in
                response.images.map { image in
                    ImageSearchTableViewCellModel(image: image) as ImageSearchTableViewCellModeling
                }
            }
            .subscribeNext { cellModels in
                self.cellModels.onNext(cellModels)
            }
            .addDisposableTo(disposalBag)
    }
}