//
//  ImageStock.m
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "ImageStock.h"

@implementation ImageStock

+ (NSArray *)listOfImages {
    
    NSArray *listOfDetailedImages = @[[[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"mushroom"] andSubject:@"misc" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"oldman"] andSubject:@"misc" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"fish"] andSubject:@"fish" andLocation:@"ocean"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"shell"] andSubject:@"misc" andLocation:@"ocean"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"wheel"] andSubject:@"misc" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"bus"] andSubject:@"misc" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"turtle"] andSubject:@"misc" andLocation:@"ocean"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"street"] andSubject:@"misc" andLocation:@"unknown"],[[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"bus"] andSubject:@"misc" andLocation:@"unknown"]];
   
    return listOfDetailedImages;
}

+ (NSArray *)listOfBirdImages {
    
    NSArray *listOfDetailedImages = @[[[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"bluebird"] andSubject:@"bird" andLocation:@"forest"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"brownbird"]andSubject:@"bird" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"eatingbird"] andSubject:@"bird" andLocation:@"forest"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"greenishbird"] andSubject:@"bird" andLocation:@"ocean"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"redblackbird"] andSubject:@"bird" andLocation:@"forest"], [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"robinbird"] andSubject:@"bird" andLocation:@"unknown"], [[DetailedImage alloc] initWithImage: [UIImage imageNamed:@"smallbird"] andSubject:@"bird" andLocation:@"ocean"]];

    return listOfDetailedImages;
}

+ (NSArray *)listOfFishImages {
        NSArray *listOfDetailedImages = @[
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"bettafish"] andSubject:@"fish" andLocation:@"unknown"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"clownfish"] andSubject:@"fish" andLocation:@"unknown"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"flyingfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"orangefish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"pinkfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage: [UIImage imageNamed:@"pinkishfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"purplishfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"speckledfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"splatteredfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"stripedfish"] andSubject:@"fish" andLocation:@"ocean"],
            [[DetailedImage alloc] initWithImage:[UIImage imageNamed:@"yellowfish"] andSubject:@"fish" andLocation:@"ocean"]];
    

    return listOfDetailedImages;
}


+ (NSDictionary *)collectionOfImagesAsDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys:[ImageStock listOfImages],@"misc",
            [ImageStock listOfBirdImages],@"birds",
            [ImageStock listOfFishImages],@"fish", nil];
}


+ (NSArray *)collectionOfImagesAsUnassortedList {
    return [[[ImageStock listOfImages] arrayByAddingObjectsFromArray:[ImageStock listOfBirdImages]] arrayByAddingObjectsFromArray:[ImageStock listOfFishImages]];
    
}

@end
