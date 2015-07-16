//
//  DetailedImage.m
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "DetailedImage.h"

@implementation DetailedImage

- (instancetype)initWithImage:(UIImage *)image andSubject:(NSString *)subject andLocation:(NSString *)location {
    self = [super init];
    if (self) {
        _imageDetailed = image;
        _subject = subject;
        _location = location;
    }
    return self;
}

- (NSDictionary *)propertiesAsDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys:self.subject,@"subject",self.location,@"location",nil];
}

- (NSString *)propertyForString:(NSString *)string {
    NSDictionary *properties = [self propertiesAsDictionary];
    return [properties valueForKey:string];
}

@end
