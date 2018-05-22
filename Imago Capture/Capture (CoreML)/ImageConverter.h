//
//  ImageConverter.h
//  Imago Capture
//
//  Created by Kyle S on 5/20/18.
//  Copyright © 2018 QuickScape. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface ImageConverter : NSObject
    
+ (CVPixelBufferRef) pixelBufferFromImage: (CGImageRef) image;
    
    @end
