//
//  Meme.swift
//  UIImagePickerDemo
//
//  Created by Vignan Sankati on 12/26/16.
//  Copyright © 2016 Vignan Sankati. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText:String
    var bottomText:String
    var originalImage:UIImage
    var memedImage:UIImage
    
    init(topText:String,bottomText:String,originalImage:UIImage,memedImage:UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
