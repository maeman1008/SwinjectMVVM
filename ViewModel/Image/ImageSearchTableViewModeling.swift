//
//  ImageSearchTableViewModeling.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/30.
//  Copyright © 2016年 ika. All rights reserved.
//
import RxSwift

public protocol ImageSearchTableViewModeling {
    var cellModels: PublishSubject<[ImageSearchTableViewCellModeling]> { get }
    func startSearch()
}