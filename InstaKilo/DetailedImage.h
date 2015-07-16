//
//  DetailedImage.h
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface DetailedImage : NSObject

@property UIImage *imageDetailed;

@property NSString *subject;

@property NSString *location;


- (instancetype)initWithImage:(UIImage *)image andSubject:(NSString *)subject andLocation:(NSString *)location;

- (NSDictionary *)propertiesAsDictionary;

- (NSString *)propertyForString:(NSString *)string;

@end
