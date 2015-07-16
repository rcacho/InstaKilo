//
//  ViewController.m
//  InstaKilo
//
//  Created by ricardo antonio cacho on 2015-07-16.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "ViewController.h"
#import "ImageStock.h"
#import "ImageCollectionViewCell.h"

@interface ViewController ()  <UICollectionViewDelegate, UICollectionViewDataSource>

@property NSArray *collectionOfImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionOfImages = [[NSArray alloc] initWithObjects:[ImageStock collectionOfImagesAsUnassortedList], nil];
    [self arrangeSectionsByProperty:@"location"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self listForSection:section].count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.collectionOfImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    [cell setImageForCell:[[self listForSection:indexPath.section] objectAtIndex:indexPath.row]];
    return cell;
}

- (NSArray *)listForSection:(NSInteger)section {
    return [self.collectionOfImages objectAtIndex:section];
}

#pragma mark - collection Methods

- (void)arrangeSectionsByProperty:(NSString *)property {
    
    // loop through values store in collection of images
    NSMutableArray *holdLists = [[NSMutableArray alloc] init];
    NSMutableDictionary *listsByProperties = [self arrangeThroughListsbyProperty:property];
    for (NSString *key in listsByProperties) {
        NSArray *list = [listsByProperties objectForKey:key];
        [holdLists insertObject:list atIndex:0];
    }
    self.collectionOfImages = [[NSArray alloc] initWithArray:holdLists];
}


- (NSMutableDictionary *)arrangeThroughListsbyProperty:(NSString *)property {
    
    NSMutableDictionary *listsByProperties = [[NSMutableDictionary alloc] init];
    
    for (NSArray *list in self.collectionOfImages) {
        for (DetailedImage *image in list) {
            if([self property:[image propertyForString:property] ExistsInDictionary:listsByProperties]) {
                NSMutableArray *list = [listsByProperties objectForKey:[image propertyForString:property]];
                [list insertObject:image atIndex:0];
            } else {
                NSMutableArray *list = [[NSMutableArray alloc] initWithObjects:image, nil];
                [listsByProperties setObject:list forKey:[image propertyForString:property]];
            }
        }
    }
    return listsByProperties;
}


- (BOOL)property:(NSString *)property ExistsInDictionary:(NSMutableDictionary *)listsByProperties {
    for (NSString *key in listsByProperties.allKeys) {
        if (key == property) {
            return YES;
        }
    }
    return NO;
}


@end
