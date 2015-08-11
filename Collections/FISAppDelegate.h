//
//  FISAppDelegate.h
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSArray *)arrayByAscendingSortingArray:(NSArray *)arr;

-(NSArray *) arrayByDescendingSortingArray:(NSArray *)arr;

-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray*)arr;

-(NSArray *)arrayByReversingArray:(NSArray *)arr;

-(NSString *)stringInBasicLeetFromString:(NSString *)str;

-(NSArray *)bisectArrayAt0:(NSArray *)arr;

-(NSArray *)arrayByFilteringHobbitsFromDictionary:(NSDictionary *)dic;

-(NSArray *)arrayByFilteringStringsBeginningWithA:(NSArray *)arr;

-(NSInteger) sumOfIntegerNumbersInArray:(NSArray *)arr;

-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)arr;

-(NSDictionary *)countsOfWordsInString:(NSString *)str;

-(NSDictionary *)dictionaryOfSongsByArtistFromArray:(NSArray *)arr;






@end
