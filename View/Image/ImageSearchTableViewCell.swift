//
//  ImageSearchTableViewCell.swift
//  SwinjectMVVM
//
//  Created by MaedaRyoto on 2016/04/29.
//  Copyright © 2016年 ika. All rights reserved.
//

import UIKit
import ViewModel

internal final class ImageSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var imageSizeLabel: UILabel!
    
    internal var viewModel: ImageSearchTableViewCellModeling? {
        didSet {
            tagLabel.text = viewModel?.tagText
            imageSizeLabel.text = viewModel?.pageImageSizeText
        }
    }
}
