//
//  ImageSearchTableViewController.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/29.
//  Copyright © 2016年 ika. All rights reserved.
//

import UIKit
import RxSwift
import ViewModel

public final class ImageSearchTableViewController: UITableViewController {
    
    private var autoSearchStarted = false
    
    private let disposalBag = DisposeBag()
    
    public var viewModel: ImageSearchTableViewModeling? {
        didSet {
            if let viewModel = viewModel {
                viewModel.cellModels.subscribeNext { data in
                    self.tableView.reloadData()
                }
                .addDisposableTo(disposalBag)
            }
        }
    }
    
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if !autoSearchStarted {
            autoSearchStarted = true
            viewModel?.startSearch()
        }
    }
}

extension ImageSearchTableViewController {
    
    public override func tableView(
        tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        if let viewModel = viewModel {
        }
        return 0
    }
    
    public override func tableView(
        tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier(
            "ImageSearchTableViewCell",
            forIndexPath: indexPath) as! ImageSearchTableViewCell
        
        if let viewModel = viewModel {
            cell.viewModel = viewModel.cellModels.
        } else {
            cell.viewModel = nil
        }
        
        return cell
    }
}
