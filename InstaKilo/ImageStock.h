//
//  ImageStock.h
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "DetailedImage.h"

@interface ImageStock : NSObject

+ (NSArray *)listOfImages;

+ (NSArray *)listOfBirdImages;

+ (NSArray *)listOfFishImages;

+ (NSDictionary *)collectionOfImagesAsDictionary;

+ (NSArray *)collectionOfImagesAsUnassortedList;

@end
