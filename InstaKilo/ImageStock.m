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
    NSArray *listOfImages = @[[UIImage imageNamed:@"mushroom"], [UIImage imageNamed:@"oldman"],
                              [UIImage imageNamed:@"fish"], [UIImage imageNamed:@"lines"],
                              [UIImage imageNamed:@"shell"], [UIImage imageNamed:@"wheel"],
                              [UIImage imageNamed:@"bus"], [UIImage imageNamed:@"turtle"],
                              [UIImage imageNamed:@"street"], [UIImage imageNamed:@"pluto"]];
    return listOfImages;
}

+ (NSArray *)listOfBirdImages {
    NSArray *listOfImages = @[[UIImage imageNamed:@"mushroom"], [UIImage imageNamed:@"oldman"],
                              [UIImage imageNamed:@"fish"], [UIImage imageNamed:@"lines"],
                              [UIImage imageNamed:@"shell"], [UIImage imageNamed:@"wheel"],
                              [UIImage imageNamed:@"bus"], [UIImage imageNamed:@"turtle"],
                              [UIImage imageNamed:@"street"], [UIImage imageNamed:@"pluto"]];
    return listOfImages;
}

+ (NSArray *)listOfFishImages {
    NSArray *listOfImages = @[[UIImage imageNamed:@"bettafish"], [UIImage imageNamed:@"clownfish"],
                              [UIImage imageNamed:@"flyingfish"], [UIImage imageNamed:@"orangefish"],
                              [UIImage imageNamed:@"pinkfish"], [UIImage imageNamed:@"pinkishfish"],
                              [UIImage imageNamed:@"purplishfish"], [UIImage imageNamed:@"speckledfish"],
                              [UIImage imageNamed:@"splatteredfish"], [UIImage imageNamed:@"strippedfish"],
                              [UIImage imageNamed:@"yellowfish"]];
    return listOfImages;
}


@end
