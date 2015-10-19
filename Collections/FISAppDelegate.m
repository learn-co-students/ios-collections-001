//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}


-(NSArray *)arrayBySortingArrayAscending:(NSArray *)list {
    
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sortedArray = [list sortedArrayUsingDescriptors:@[sortByNilAsc]];

    return sortedArray;
}
-(NSArray *)arrayBySortingArrayDescending:(NSArray *)list {
    
    NSSortDescriptor *sortByNilDesc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    NSArray *sortedArray = [list sortedArrayUsingDescriptors:@[sortByNilDesc]];
    
    return sortedArray;
}
-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)list {
    
    NSMutableArray *swappedList = [list mutableCopy];
    NSUInteger length = [list count];
    
    if (list && length > 0) {
        [swappedList exchangeObjectAtIndex:0 withObjectAtIndex:length-1];
    }
    
    return swappedList;
}
-(NSArray *)arrayByReversingArray:(NSArray *)list {
    
    NSMutableArray *reversedList = [list mutableCopy];
    NSUInteger length = [list count];
    
    if (list && length > 0) {
        NSUInteger end = length-1;
        for (NSUInteger i=0; i < end; i++) {
            [reversedList exchangeObjectAtIndex:i withObjectAtIndex:end];
            end--;
        }
    }
    
    return reversedList;
}
-(NSString *)stringInBasicLeetFromString:(NSString *)basicLeet {
    
    NSMutableString *sustitutedLeetString = [basicLeet mutableCopy];
    NSUInteger length = [sustitutedLeetString length];
    if (sustitutedLeetString && length > 0) {
        [sustitutedLeetString replaceOccurrencesOfString:@"a" withString:@"4"
                                                 options:0 range:NSMakeRange(0, length)];
        [sustitutedLeetString replaceOccurrencesOfString:@"s" withString:@"5"
                                                 options:0 range:NSMakeRange(0, length)];
        [sustitutedLeetString replaceOccurrencesOfString:@"i" withString:@"1"
                                                 options:0 range:NSMakeRange(0, length)];
        [sustitutedLeetString replaceOccurrencesOfString:@"l" withString:@"1"
                                                 options:0 range:NSMakeRange(0, length)];
        [sustitutedLeetString replaceOccurrencesOfString:@"e" withString:@"3"
                                                 options:0 range:NSMakeRange(0, length)];
        [sustitutedLeetString replaceOccurrencesOfString:@"t" withString:@"7"
                                                 options:0 range:NSMakeRange(0, length)];
    }

    return sustitutedLeetString;
}
-(NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)list {
    
    NSPredicate *negPredicate = [NSPredicate predicateWithFormat:@"self < 0"];
    NSPredicate *posPredicate = [NSPredicate predicateWithFormat:@"self >= 0"];
    NSArray *negList = [list filteredArrayUsingPredicate:negPredicate];
    NSArray *posList = [list filteredArrayUsingPredicate:posPredicate];
    
    return @[negList, posList];
}
-(NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)dictionary {
  
    return [dictionary allKeysForObject:@"hobbit"];;
}
-(NSArray *)stringsBeginningWithAInArray:(NSArray *)list {
    
    NSPredicate *stringsStartingWithAPredicate = [NSPredicate predicateWithFormat:@"self BEGINSWITH[c] 'A'"];
    NSArray *stringsStartingWithA = [list filteredArrayUsingPredicate:stringsStartingWithAPredicate];
    
    return stringsStartingWithA;
}
-(NSInteger)sumOfIntegersInArray:(NSArray *)list {
    
    NSInteger sum = 0;
    
    for (NSNumber *num in list) {
        sum += [num integerValue];
    }
    
    return sum;
}
-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)list {
    
    NSMutableArray *pluralizedStrings = [list mutableCopy];
    
    for (NSUInteger i = 0; i < [list count]; i++) {
        if ([list[i] isEqualToString:@"foot"]) {
            pluralizedStrings[i] = @"feet";
        } else if ([list[i] isEqualToString:@"box"]) {
            pluralizedStrings[i] = @"boxes";
        } else if ([list[i] isEqualToString:@"ox"]) {
            pluralizedStrings[i] = @"oxen";
        } else if ([list[i] isEqualToString:@"radius"]) {
            pluralizedStrings[i] = @"radii";
        } else if ([list[i] isEqualToString:@"trivium"]) {
            pluralizedStrings[i] = @"trivia";
        } else {
             pluralizedStrings[i]  =  [NSString stringWithFormat:@"%@s", pluralizedStrings[i]];
        }
    }
    
    return pluralizedStrings;
}
-(NSDictionary *)countsOfWordsInString:(NSString *)sentence {

    NSCountedSet *countofWordsSet = [[NSCountedSet alloc] init];
    NSMutableDictionary *countofWords = [[NSMutableDictionary alloc] init];
    
    [sentence enumerateSubstringsInRange:NSMakeRange(0, [sentence length])
                                 options:NSStringEnumerationByWords
                              usingBlock:^(NSString *substring,
                                           NSRange substringRange,
                                           NSRange enclosingRange,
                                           BOOL *stop){
                                  
                                  [countofWordsSet addObject:[substring lowercaseString]];
                              }];
    
    for (NSString *word in countofWordsSet) {
        NSUInteger count = [countofWordsSet countForObject:word];
        [countofWords setObject:@(count) forKey:word];
    }

    return countofWords;
}
-(NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)songList {
    
    NSMutableDictionary *songsByArtist = [[NSMutableDictionary alloc] init];
    NSMutableArray *songs = [[NSMutableArray alloc] init];
    
    for (NSString *song in songList) {
        NSArray *keyValueArray = [song componentsSeparatedByString:@" - "];
        [songs addObject:keyValueArray[1]];
        [songsByArtist setObject:songs forKey:keyValueArray[0]];
    }
    
    return songsByArtist;
}

@end
