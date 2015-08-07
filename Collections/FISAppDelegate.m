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
    [self dictionaryOfSongsByArtistFromArray: @[ @"Coldplay - Strawberry Swing"        ,
                                                                   @"Johnny Flynn - In April"            ,
                                                                   @"Coldplay - Clocks"                  ,
                                                                   @"Sigur Rós - Andvari"                ,
                                                                   @"Ryan Adams - When The Stars Go Blue",
                                                                   @"Coldplay - Viva la Vida"            ,
                                                                   @"Johnny Flynn - Cold Bread"          ,
                                                                   @"Sigur Rós - Glósóli"                ,
                                                                   @"Ryan Adams - La Cienega Just Smiled"
                                                                   ]
     ];
       return YES;
}

//arrayByAscendingSortingArray: that takes one NSArray argument and returns and NSArray.

-(NSArray *)arrayByAscendingSortingArray:(NSArray *)array{
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                   ascending:YES];
    NSArray *lowToHigh= [array sortedArrayUsingDescriptors:@[sortByNilAsc]];
    return lowToHigh;
}

//arrayByDescendingSortingArray: that takes one NSArray argument and returns an NSArray.

-(NSArray *)arrayByDescendingSortingArray:(NSArray *)array{
        NSSortDescriptor *sortByNilDesc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                       ascending:NO];
        NSArray *highToLow= [array sortedArrayUsingDescriptors:@[sortByNilDesc]];
    return highToLow;
}


//arrayBySwappingFirstObjectWithLastObjectInArray: that takes one NSArray argument and returns an NSArray.

-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array{
    
    NSNumber *tempA = [array objectAtIndex:0];
    NSNumber * tempB = [array lastObject];
    NSUInteger lastIndex = [array count] -1;
    NSMutableArray *reversed = [array mutableCopy];
    [reversed replaceObjectAtIndex:0 withObject:tempB];
    [reversed replaceObjectAtIndex:lastIndex withObject:tempA];
    NSArray *finalArray = [reversed copy];
    return finalArray;
}


//arrayByReversingArray: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByReversingArray:(NSArray *)array{
    NSArray* reversed = [[array reverseObjectEnumerator] allObjects];
    return reversed;
}


//stringInBasicLeetFromString: that takes one NSString argument and returns an NSString.
-(NSString *)stringInBasicLeetFromString:(NSString *)string{
    NSDictionary *leet = @{ @"a" : @"4",
                            @"s" : @"5",
                            @"i" : @"1",
                            @"l" : @"1",
                            @"e" : @"3",
                            @"t" : @"7" };
    
    NSMutableArray *characters = [[NSMutableArray alloc] init];
    for (int i=0; i < [string length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [string characterAtIndex:i]];
        [characters addObject:ichar];
    }
    NSLog(@"%@", characters);
    for (NSUInteger i = 0; i <[characters count]; i++){
        NSArray *allTheKeys = [leet allKeys];
        for (NSUInteger j = 0; j <[allTheKeys count]; j++){
            if([characters[i] isEqualToString:allTheKeys[j]]){
                characters[i] = leet[allTheKeys[j]];
            }
        }
    }
        
    NSString *final = [characters componentsJoinedByString:@""];
    
    
    
    
    return final;
}


//bisectArrayAt0: that takes one NSArray argument and returns an NSArray.
-(NSArray *)bisectArrayAt0:(NSArray *)array{
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                   ascending:YES];
    NSArray *sorted = [array sortedArrayUsingDescriptors:@[sortByNilAsc]];

    NSMutableArray *nestedSorted = [[NSMutableArray alloc] init];

    
    NSPredicate *negativePredicate = [NSPredicate predicateWithFormat:@"integerValue < 0"];
    NSPredicate *positivePredicate = [NSPredicate predicateWithFormat:@"integerValue > 0"];
    NSArray *negative = [sorted filteredArrayUsingPredicate:negativePredicate];
    NSArray *positive = [sorted filteredArrayUsingPredicate:positivePredicate];
    
    NSMutableArray *mNegative= [negative mutableCopy];
    NSMutableArray *mPositive = [positive mutableCopy];
    
    [nestedSorted addObject:mNegative];
    [nestedSorted addObject:mPositive];
    

    


    
    return nestedSorted;
    

}

//arrayByFilteringHobbitsFromDictionary: that takes one NSDictionary argument and returns an NSArray.
-(NSArray *)arrayByFilteringHobbitsFromDictionary:(NSDictionary *)dictionary{
    NSArray *arrayOfKeys = [dictionary allKeysForObject:@"hobbit"];
    return arrayOfKeys;
}


//arrayByFilteringStringsBeginningWithA: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByFilteringStringsBeginningWithA:(NSArray *)array{
    NSPredicate *startsWithA = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", @"A"];
    NSArray *wordsWithA = [array filteredArrayUsingPredicate:startsWithA];

    return wordsWithA;
}

//sumOfIntegerNumbersInArray: that takes one NSArray argument and returns an NSInteger.
-(NSInteger)sumOfIntegerNumbersInArray:(NSArray *)array{
//    NSPredicate *positivePredicate = [NSPredicate predicateWithFormat:@"integerValue > 0"];
//    NSArray *positive = [array filteredArrayUsingPredicate:positivePredicate];
    NSInteger x = 0;
    for (NSUInteger i = 0; i < [array count]; i++){
        NSInteger num = [array[i] intValue];
        x += num;
        
    }
    return x;
}


//arrayByPluralizingStringsInArray: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array{
    NSMutableArray *plurals = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [array count]; i++){
        if ([array[i] containsString:@"oo"]){
            NSString *plural = [array[i] stringByReplacingOccurrencesOfString:@"oo" withString:@"ee"];
            [plurals addObject: plural];
        }
        else if ([array[i] isEqualToString:@"box"]){
            NSString *plural = [array[i] stringByReplacingOccurrencesOfString:@"box" withString:@"boxes"];
            [plurals addObject: plural];
        }
        else if ([array[i] isEqualToString:@"trivium"]){
            NSString *plural = [array[i] stringByReplacingOccurrencesOfString:@"trivium" withString:@"trivia"];
            [plurals addObject: plural];
        }
        else if ([array[i] containsString:@"ius"]){
            NSString *plural = [array[i] stringByReplacingOccurrencesOfString:@"ius" withString:@"ii"];
            [plurals addObject: plural];
        }
        else if ([array[i] isEqualToString:@"ox"]){
            NSString *plural = [array[i] stringByReplacingOccurrencesOfString:@"ox" withString:@"oxen"];
            [plurals addObject: plural];
        }
        else {
            NSLog(@"%@", array[i]);
            NSString *plural = [NSString stringWithFormat:@"%@s", array[i]];
            [plurals addObject: plural];
        }
        
    }
    
    return plurals;
}


//countsOfWordsInString: that takes one NSString argument and returns an NSDictionary.
-(NSDictionary *)countsOfWordsInString:(NSString *)string{
    //removing punctuation
    NSArray *punctuationStrings = @[@".", @",", @";", @"-"];
    
    NSString *noPunctuation = string;
    
    for (NSString *punctuation in punctuationStrings) {
        noPunctuation = [noPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *lowercaseNoPunctuation = [noPunctuation lowercaseString];
    
    //array of lower case words
    NSArray *arrayOfWords = [lowercaseNoPunctuation componentsSeparatedByString:@" "];
    
    
    NSMutableDictionary *wordCount = [NSMutableDictionary new];
    NSNumber *num;

    for (NSUInteger i = 0; i < [arrayOfWords count]; i++){
        if ([wordCount objectForKey:arrayOfWords[i]] == nil ){

            NSInteger first = 1;
            num = @(first);
            wordCount[arrayOfWords[i]] = num;
        }
        else {
            NSNumber *count = wordCount[arrayOfWords[i]];
            NSInteger total = [count integerValue];
            total += 1;
            num = @(total);
            wordCount[arrayOfWords[i]] = num;
            
        }
        
    }
    
    return wordCount;
}

//dictionaryOfSongsByArtistFromArray: that takes one NSArray argument and returns an NSDictionary.

-(NSDictionary *)dictionaryOfSongsByArtistFromArray:(NSArray *)array{
    NSMutableDictionary *artistSong = [[NSMutableDictionary alloc] init];
    
    for (NSString *string in array) {
        NSArray *artistAndSong = [string componentsSeparatedByString:@" - "];
        NSString *artist = artistAndSong[0];
        NSString *song = artistAndSong[1];
        
        if ([[artistSong allKeys] containsObject:artist]) {
            [artistSong[artist] addObject:song];
        } else {
            artistSong[artist] = [ @[song] mutableCopy];
        }
    }
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    for (NSString *artist in artistSong) {
        [artistSong[artist] sortUsingDescriptors:@[sortByNilAsc]];
    }
    
    return [NSDictionary dictionaryWithDictionary:artistSong];

    return nil;
}



@end
