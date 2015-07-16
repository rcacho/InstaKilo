//
//  ImageCollectionViewCell.m
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "ImageCollectionViewCell.h"

@interface ImageCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewCellImageView;

@end

@implementation ImageCollectionViewCell

- (void)setImageViewCellImage:(UIImage *)image {
    _imageViewCellImageView.image = image;
}

@end
