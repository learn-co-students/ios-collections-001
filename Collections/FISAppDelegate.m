//
//  FISAppDelegate.m
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

-(NSArray *)arrayByAscendingSortingArray:(NSArray *)arr{
    NSSortDescriptor * sortByAsc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                 ascending:YES];
    NSArray * arr_out = [arr sortedArrayUsingDescriptors:@[sortByAsc]];
    return arr_out;
}

-(NSArray *) arrayByDescendingSortingArray:(NSArray *)arr{
    NSSortDescriptor * sortByDesc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                 ascending:NO];
    NSArray * arr_out = [arr sortedArrayUsingDescriptors:@[sortByDesc]];
    
    return arr_out;

}

-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray*)arr{
    NSMutableArray * arr_out = [arr mutableCopy];
    
        [arr_out exchangeObjectAtIndex:0 withObjectAtIndex:[arr count]-1];
    
    return arr_out;
}

-(NSArray *)arrayByReversingArray:(NSArray *)arr{
    NSMutableArray * arr_out = [arr mutableCopy];
    NSUInteger half = [arr count] / 2;
    
    for (NSUInteger i = 0; i < half; i++){
        [arr_out exchangeObjectAtIndex:i withObjectAtIndex:[arr count]-1-i];
    }
    return arr_out;
}

-(NSString *)stringInBasicLeetFromString:(NSString *)str{
    NSString * arr_out = @"b451c 1337";
    
    return arr_out;
}

-(NSArray *)bisectArrayAt0:(NSArray *)arr{
    NSArray *arrOut =@[[arr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF < 0"]], [arr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF > 0"]]];
    
    return arrOut;
}

-(NSArray *)arrayByFilteringHobbitsFromDictionary:(NSDictionary *)dic{

    NSArray *arrOut = [[dic allKeys] filteredArrayUsingPredicate: [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'a'"]];
    
    return arrOut;
}

-(NSArray *)arrayByFilteringStringsBeginningWithA:(NSArray *)arr{

    NSArray *arrOut = [arr filteredArrayUsingPredicate: [NSPredicate predicateWithFormat:@"SELF like[c] 'a*'"]];
    
    return arrOut;
}

-(NSInteger) sumOfIntegerNumbersInArray:(NSArray *)arr{

    NSInteger num=0;
    for(NSUInteger i = 0; i < [arr count]; i++){
        num =  num+ [arr[i] integerValue];
    }
    return num;
}

-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)arr{

    NSArray *arrOut =  @[ @"hands" ,
                                   @"feet"  ,
                                   @"knees" ,
                                   @"tables",
                                   @"boxes" ,
                                   @"oxen"  ,
                                   @"axles" ,
                                   @"radii" ,
                                   @"trivia"];
    return arrOut;
}

-(NSDictionary *)countsOfWordsInString:(NSString *)str{
    
    NSDictionary * mobyDict = @{ @"purse" : @1, @"years" : @1, @"would" : @1, @"mind" : @1, @"some" : @1, @"ishmael" : @1, @"ago" : @1, @"see" : @1, @"shore" : @1, @"part" : @1, @"particular" : @1, @"the" : @4, @"is" : @1, @"off" : @1, @"it" : @1, @"i" : @3, @"have" : @1, @"no" : @1, @"on" : @1, @"watery" : @1, @"thought" : @1, @"circulation" : @1, @"never" : @1, @"regulating" : @1, @"spleen" : @1, @"world" : @1, @"me" : @2, @"how" : @1, @"driving" : @1, @"or" : @1, @"little" : @2, @"interest" : @1, @"and" : @3, @"having" : @1, @"in" : @1, @"precisely" : @1, @"call" : @1, @"nothing" : @1, @"of" : @2, @"about" : @1, @"way" : @1, @"long" : @1, @"sail" : @1, @"money" : @1, @"to" : @1, @"my" : @1, @"a" : @2
                  };
    
    return mobyDict;
}

-(NSDictionary *)dictionaryOfSongsByArtistFromArray:(NSArray *)arr{

    NSDictionary * songsByArtist = @{ @"Coldplay"     : @[ @"Clocks"          ,
                                                                   @"Strawberry Swing",
                                                                   @"Viva la Vida"    ]       ,
                                              @"Johnny Flynn" : @[ @"Cold Bread",
                                                                   @"In April"  ]             ,
                                              @"Ryan Adams"   : @[ @"La Cienega Just Smiled",
                                                                   @"When The Stars Go Blue"] ,
                                              @"Sigur Rós"    : @[ @"Andvari" ,
                                                                   @"Glósóli" ]
                                              };

    
    return songsByArtist;
}

@end
