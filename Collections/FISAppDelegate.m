//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


// 1.
- (NSArray *)arrayBySortingArrayAscending:(NSArray *)array {
    NSSortDescriptor *sortByAscending = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                      ascending:YES];
    NSArray *sortedByAscending = [array sortedArrayUsingDescriptors:@[sortByAscending]];
    return sortedByAscending;
}


// 2.
- (NSArray *)arrayBySortingArrayDescending:(NSArray *)array {
    NSSortDescriptor *sortByDescending = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                      ascending:NO];
    NSArray *sortedByDescending = [array sortedArrayUsingDescriptors:@[sortByDescending]];
    return sortedByDescending;
}


// 3.
- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array {
    NSMutableArray *sortedBySwap = [array mutableCopy];
    sortedBySwap[0] = [array lastObject];
    sortedBySwap[[sortedBySwap  count] - 1] = [array firstObject];
    return sortedBySwap;
}


// 4.
- (NSArray *)arrayByReversingArray:(NSArray *)array {
    NSArray *sortedByReverse = [[array reverseObjectEnumerator] allObjects];
    return sortedByReverse;
}


// 5.
- (NSString *)stringInBasicLeetFromString:(NSString *)string {
    
    NSDictionary *leetTranslator = @{ @"a" : @"4",
                                      @"s" : @"5",
                                      @"i" : @"1",
                                      @"l" : @"1",
                                      @"e" : @"3",
                                      @"t" : @"7"};
    
    for (NSString *key in leetTranslator) {
        string = [string stringByReplacingOccurrencesOfString:key withString:leetTranslator[key]];
    }
    
    return string;
}


// 6.
- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    NSArray *sortedSplitArray = @[[@[]mutableCopy],[@[]mutableCopy]];
    
    for (NSNumber *number in array) {
        if ([number integerValue] < 0) {
            [sortedSplitArray[0] addObject:number];
        }
        else if([number integerValue] >= 0){
            [sortedSplitArray[1] addObject:number];
        }
    }
    
    return sortedSplitArray;
}


// 7.
- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)dictionary {
    NSMutableArray *sortedNamesArray = [[NSMutableArray alloc] init];
    for (NSString *name in dictionary) {
        if ([dictionary[name] isEqualToString:@"hobbit"]) {
            [sortedNamesArray addObject:name];
        }
    }
    return sortedNamesArray;
}


// 8.
- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    NSPredicate *searchForAPrefix = [NSPredicate predicateWithFormat:@"self BEGINSWITH[c] 'a'"];
    NSArray *sortedArrayWithAPrefix = [array filteredArrayUsingPredicate:searchForAPrefix];
    return sortedArrayWithAPrefix;
}


// 9.
- (NSInteger )sumOfIntegersInArray:(NSArray *)array {
    NSInteger sumOfIntegers = 0;
    for (NSNumber *number in array) {
        NSInteger integer = [number integerValue];
        sumOfIntegers += integer;
    }
    return sumOfIntegers;
}


// 10.
- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    NSMutableArray *sortedPluralArray = [array mutableCopy];
    NSDictionary *exceptionPlurals = @{ @"foot" : @"feet",
                                          @"ox" : @"oxen",
                                      @"radius" : @"radii",
                                     @"trivium" : @"trivia"};
    for (NSInteger i = 0; i < [sortedPluralArray count]; i++) {
        if ([[exceptionPlurals allKeys] containsObject:sortedPluralArray[i]]) {
            sortedPluralArray[i] = exceptionPlurals[sortedPluralArray[i]];
        } else {
            if ([sortedPluralArray[i] hasSuffix:@"x"]) {
                 sortedPluralArray[i] = [sortedPluralArray[i] stringByAppendingString:@"es"];
            } else {
                 sortedPluralArray[i] = [sortedPluralArray[i] stringByAppendingString:@"s"];
            }
        }
    }
    return sortedPluralArray;
}


// 11.
- (NSDictionary *)countsOfWordsInString:(NSString *)string {
    NSMutableDictionary *sortedWordCount = [[NSMutableDictionary alloc]init];
    NSArray *punctuations          = @[ @".", @"-", @",", @";"];
    
    for (NSString *punctuation in punctuations){
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSArray *words = [[string lowercaseString] componentsSeparatedByString:@" "];
    
    for (NSString *word in words){
        if(!sortedWordCount[word]){
            sortedWordCount[word] = @(1);
        }else{
            sortedWordCount[word]= @([sortedWordCount[word] integerValue] +1);
        }
        
    }
    
    return sortedWordCount;
}


// 12.
- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    NSMutableDictionary *sortedSongDirectory = [[NSMutableDictionary alloc] init];
    NSSortDescriptor *songsByArtist = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                    ascending:YES];
    
    for (NSString *song in array) {
        NSArray *songInfo = [song componentsSeparatedByString:@" - "];
        if (!sortedSongDirectory[songInfo[0]]) {
            sortedSongDirectory[songInfo[0]] = [@[songInfo[1]] mutableCopy];
        } else {
            [sortedSongDirectory[songInfo[0]] addObject:songInfo[1]];
        }
    }
    
    for (NSString *song in sortedSongDirectory) {
        [sortedSongDirectory[song] sortUsingDescriptors:@[songsByArtist]];
    }

    return sortedSongDirectory;
}

@end
