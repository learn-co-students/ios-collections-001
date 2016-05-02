//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)array {
    NSSortDescriptor *sortArrayAsc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                   ascending:YES];

    NSArray *ascArray = [array sortedArrayUsingDescriptors:@[sortArrayAsc]];
    return ascArray;
}

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)array {
    NSSortDescriptor *sortArrayDesc = [NSSortDescriptor sortDescriptorWithKey:nil
                                                                   ascending:NO];

    NSArray *descArray = [array sortedArrayUsingDescriptors:@[sortArrayDesc]];
    return descArray;
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array {
    NSMutableArray *reorderedArray = [[NSMutableArray alloc] init];
    for(NSUInteger i = 0; i < [array count]; i++) {
        if (i == 0){
            [reorderedArray addObject:array[[array count] - 1]];
        } else if (i == [array count] - 1) {
            [reorderedArray addObject:array[0]];
        } else {
            [reorderedArray addObject:array[i]];
        }
    }
    return reorderedArray;
}

- (NSArray *)arrayByReversingArray:(NSArray *)array {
    NSMutableArray *reversedArray = [[NSMutableArray alloc] init];
    NSInteger arrayLength = [array count];
    for(NSUInteger i = 1; i <= arrayLength; i++) {
        [reversedArray addObject:array[arrayLength - i]];
    }
         return reversedArray;
}

- (NSString *)stringInBasicLeetFromString:(NSString *)string {
    NSString *leetString = @"";
    NSDictionary *leetHash = @{@"a" : @"4", @"s" : @"5", @"i" : @"1", @"l" : @"1", @"e" : @"3", @"t" : @"7"};
    for (NSInteger i = 0; i < [string length]; i++) {
        char character = [string characterAtIndex:i];
        NSString *sCharacter = [NSString stringWithFormat:@"%c", character];
        if (leetHash[sCharacter]) {
            leetString = [leetString stringByAppendingString:leetHash[sCharacter]];
        } else {
            leetString = [leetString stringByAppendingString:sCharacter];
        }
    }
    return leetString;
}

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    NSMutableArray *positives = [[NSMutableArray alloc] init];
    NSMutableArray *negatives = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [array count] ; i++) {
        if ([array[i] intValue] < 0) {
            [negatives addObject:array[i]];
        } else {
            [positives addObject:array[i]];
        }
    }
    NSArray *result = @[negatives, positives];
    return result;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)dictionary {
    NSArray*creatures = [dictionary allKeys];
    NSMutableArray *hobbits = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [creatures count]; i++) {
        if ([dictionary[creatures[i]] isEqualToString:@"hobbit"]) {
            [hobbits addObject:creatures[i]];
        }
    }
    return hobbits;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    NSPredicate* startsWithAPredicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] 'a'"];
    NSArray *namesStartWithA = [array filteredArrayUsingPredicate:startsWithAPredicate];
    return namesStartWithA;
}

- (NSInteger)sumOfIntegersInArray:(NSArray *)array {
    NSUInteger result = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        result += [array[i] intValue];
    }
    return result;
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    return nil;
}

- (NSDictionary *)countsOfWordsInString:(NSString *)string {
    return nil;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    return nil;
}

@end
