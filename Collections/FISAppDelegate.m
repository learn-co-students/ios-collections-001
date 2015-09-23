//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

/**
 
 * Define your methods here.
 
 */

-(NSArray *)arrayBySortingArrayAscending:(NSArray *)array {
    
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:@[sortByNilAsc]];
    return sortedArray;
}
-(NSArray *)arrayBySortingArrayDescending:(NSArray *)array {
    
    NSSortDescriptor *sortByNilDesc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:@[sortByNilDesc]];
    return sortedArray;
}
-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array {
    
    NSString *firstObject = [array firstObject];
    NSString *lastObject = [array lastObject];
    NSMutableArray *editArray = [[NSMutableArray alloc] init];
    editArray = [array mutableCopy];
    
    [editArray replaceObjectAtIndex:0 withObject:lastObject];
    [editArray replaceObjectAtIndex:[editArray count]-1 withObject:firstObject];
    
    NSArray *revisedArray = [editArray copy];
    return revisedArray;
}
-(NSArray *)arrayByReversingArray:(NSArray *)array {
    
    NSArray *reversedArray = [[array reverseObjectEnumerator] allObjects];
    NSLog(@"%@",reversedArray);
    
    return reversedArray;
}
-(NSString *)stringInBasicLeetFromString:(NSString *)string {
    
    
    string = [string stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
    string = [string stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
    string = [string stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
    string = [string stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
    string = [string stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
    string = [string stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    
    return string;
}
-(NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    
    NSPredicate *collectNegativeNumbers = [NSPredicate predicateWithFormat:@"integerValue < 0"];
    NSArray *negativeNumbers = [array filteredArrayUsingPredicate:collectNegativeNumbers];
    NSLog(@"%@", negativeNumbers);
    
    NSPredicate *collectPositiveNumbers = [NSPredicate predicateWithFormat:@"integerValue >= 0"];
    NSArray *positiveNumbers = [array filteredArrayUsingPredicate:collectPositiveNumbers];
    NSLog(@"%@", positiveNumbers);
    
    NSMutableArray *buildArray = [[NSMutableArray alloc] init];
    [buildArray addObject:negativeNumbers];
    [buildArray addObject:positiveNumbers];
    
    NSArray *separated = [buildArray copy];
    NSLog(@"%@",separated);
    return separated;
    
}
-(NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)dictionary {
    
    NSMutableArray *gatherNames = [[NSMutableArray alloc] init];
    
    NSArray *keys;
    id key, value;
    keys = [dictionary allKeys];
    
    for (NSUInteger i = 0; i < keys.count; i++) {
        
        key = [keys objectAtIndex:i];
        value = [dictionary objectForKey:key];
        
        if ([value isEqualToString:@"hobbit"]) {
            
            [gatherNames addObject:key];
            
        }
    }
    
    NSArray *namesOfHobbits = [gatherNames copy];
    
    return namesOfHobbits;
}
-(NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    
    NSPredicate *findBeginsWithA = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] 'a'"];
    NSArray *stringsBeginWithA = [array filteredArrayUsingPredicate:findBeginsWithA];
    return stringsBeginWithA;
}
-(NSInteger)sumOfIntegersInArray:(NSArray *)array {
    
    NSInteger sum = 0;
    for (NSInteger i = 0; i < array.count; i++) {
        
        sum = sum + [[array objectAtIndex:i] integerValue];
        
    }
    return sum;
}
-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    
    NSDictionary *singularAndPlural = @{
        @"hand" : @"hands",
        @"foot" : @"feet",
        @"knee" : @"knees",
        @"table" : @"tables",
        @"box" : @"boxes",
        @"ox" : @"oxen",
        @"axle" : @"axles",
        @"radius" : @"radii",
        @"trivium" : @"trivia",
    };
    
    NSMutableArray *capturePlurals = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < array.count; i++) {
        
        NSString *arrayObject = [array objectAtIndex:i];
        NSLog(@"%@",arrayObject);
        
        for (id key in singularAndPlural) {
            
            if ([arrayObject isEqualToString:key]) {
                [capturePlurals addObject:[singularAndPlural objectForKey:key]];
            }
            
        }
        
    }
    NSArray *wordsInPluralForm = [capturePlurals copy];
    return wordsInPluralForm;
}
-(NSDictionary *)countsOfWordsInString:(NSString *)string {
    
    NSString *lowercaseString = [string lowercaseString];
    NSString *wordsOnly = [[lowercaseString componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@" "];
    NSArray *wordArray = [wordsOnly componentsSeparatedByString:@" "];
    
    NSMutableArray *deleteEmptyObjects = [[NSMutableArray alloc] init];
    deleteEmptyObjects = [wordArray mutableCopy];
    [deleteEmptyObjects removeObject:@""];
    
    NSInteger occurrences = 0;
    
    NSMutableDictionary *collectOccurrences = [[NSMutableDictionary alloc] init];
    
    for (NSUInteger i = 0; i < deleteEmptyObjects.count; i++) {
        
        NSString *word = [deleteEmptyObjects objectAtIndex:i];
        
        for (NSUInteger j = 0; j < deleteEmptyObjects.count; j++) {
            
            NSString *compare = [deleteEmptyObjects objectAtIndex:j];
            
            if ([word isEqualToString:compare]) {
                
                occurrences += 1;
                
            }
        }
        
        [collectOccurrences setObject:[NSNumber numberWithInteger:occurrences] forKey:word];
        occurrences = 0;
        
    }
    
    NSDictionary *finalWordCount = [collectOccurrences copy];
    return finalWordCount;
}
-(NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    
    NSMutableArray *putBackInArray = [[NSMutableArray alloc] init];
    NSMutableArray *artistArray = [[NSMutableArray alloc] init];
    NSMutableArray *songsOnly = [[NSMutableArray alloc] init];
    NSMutableDictionary *mutableArtistsAndSongs = [[NSMutableDictionary alloc] init];
    
    
    
    for (NSUInteger i = 0; i < array.count; i++) {
    
        NSString *artistTitleUnorganized = [array objectAtIndex:i];
        NSArray *songAndTitle = [artistTitleUnorganized componentsSeparatedByString:@" - "];
        NSString *artistName = [songAndTitle objectAtIndex:0];
        NSString *songTitle = [songAndTitle objectAtIndex:1];
        
        [putBackInArray addObject:artistName];
        [putBackInArray addObject:songTitle];
        [artistArray addObject:artistName];
        
    }
    for (NSUInteger i = 0; i < artistArray.count; i++) {
        
        NSString *artistOnly = [artistArray objectAtIndex:i];
        
        for (NSUInteger j = 0; j < putBackInArray.count; j++) {
            
            NSString *artist = [putBackInArray objectAtIndex:j];
            
            if ([artistOnly isEqualToString:artist]) {
                
                NSString *song = [putBackInArray objectAtIndex:j+1];
                [songsOnly addObject:song];
                
                
                
            }
            
        }
        NSArray *copySongsOnly = [songsOnly copy];
        [songsOnly removeAllObjects];
        NSSortDescriptor *sortSongs = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
        copySongsOnly = [copySongsOnly sortedArrayUsingDescriptors:@[sortSongs]];
        
        [mutableArtistsAndSongs setObject:copySongsOnly forKey:artistOnly];
        
        
        
    }
    NSDictionary *finalListOfArtistsAndSongs = [mutableArtistsAndSongs copy];
    return finalListOfArtistsAndSongs;
}

@end
