//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

-(NSArray *)arrayBySortingArrayAscending:(NSArray *)givenArray {
    
    NSSortDescriptor *sortArrayByNilAscending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    
    NSArray *sortedArray = [givenArray sortedArrayUsingDescriptors:@[sortArrayByNilAscending]];

    return sortedArray;
}

-(NSArray *)arrayBySortingArrayDescending:(NSArray *)givenArray {
    
    NSSortDescriptor *sortArrayByNilDescending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    
    NSArray *sortedArray = [givenArray sortedArrayUsingDescriptors:@[sortArrayByNilDescending]];
    
    return sortedArray;
}


-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)givenArray {
    
    NSInteger arrayCount = [givenArray count];
    
    NSString *firstItem = givenArray[0];
    
    NSString *lastItem = givenArray[arrayCount - 1];
    
    NSMutableArray *twistedArray = [givenArray mutableCopy];
    
    twistedArray[0] = lastItem;
    
    twistedArray[arrayCount - 1] = firstItem;
    
    return twistedArray;
}


-(NSArray *)arrayByReversingArray:(NSArray *)givenArray {
    
    NSArray *reversedArray = [[givenArray reverseObjectEnumerator] allObjects];
    
    return reversedArray;
}


-(NSString *)stringInBasicLeetFromString:(NSString *)givenString {
    
    NSDictionary *leetList = @{ @"a"    :@"4",
                                @"s"    :@"5",
                                @"i"    :@"1",
                                @"l"    :@"1",
                                @"e"    :@"3",
                                @"t"    :@"7"
                                };
    
    NSString *leetedString = givenString;
    
    for (NSString *key in leetList) {
        leetedString = [leetedString stringByReplacingOccurrencesOfString:key withString:leetList[key]];
    }
    
    return leetedString;
}


-(NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)givenArray {
    
    NSMutableArray *positiveArray = [[NSMutableArray alloc]init];
    
    NSMutableArray *negativeArray = [[NSMutableArray alloc]init];
    
    for (NSNumber *number in givenArray) {
        if ([number floatValue] < 0) {
            [negativeArray addObject:number];
        } else if ([number floatValue] >= 0) {
            [positiveArray addObject:number];
        }
    }
    
    return @[negativeArray, positiveArray];
}


-(NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)givenDictionary {
    
    NSMutableArray *hobbitNames = [[NSMutableArray alloc]init];
    
    for (NSString *key in givenDictionary) {
        
        if ([givenDictionary[key]  isEqual: @"hobbit"]) {
            [hobbitNames addObject:key];
        }
    }
    
    return hobbitNames;
}


-(NSArray *)stringsBeginningWithAInArray:(NSArray *)givenArray {
    
    NSMutableArray *arrayWithAs = [[NSMutableArray alloc]init];
    
    for (NSString *value in givenArray) {
        
        if ([value hasPrefix:@"a"] || [value hasPrefix:@"A"]) {
            [arrayWithAs addObject:value];
        }
    }
    
    return arrayWithAs;
}


-(NSInteger)sumOfIntegersInArray:(NSArray *)givenArray {
    
    NSInteger sumOfArray = 0;
    
    NSInteger arrayLength = [givenArray count];
    
    for (NSUInteger i = 0; i < arrayLength; i++) {
        
        NSNumber *arrayValue = givenArray[i];
        
        NSInteger arrayInt = [arrayValue integerValue];
        
        sumOfArray = sumOfArray + arrayInt;
    }
    
    
    return sumOfArray;
}


-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)givenArray {
    
    NSMutableArray *pluralArray = [[NSMutableArray alloc]init];
    
    for (NSString *singular in givenArray) {
        
        NSString *plural = @"";
        
        if ([singular containsString:@"oo"]) {
            plural = [singular stringByReplacingOccurrencesOfString:@"oo" withString:@"ee"];
        } else if ([singular containsString:@"ox"]) {
            if ([singular hasPrefix:@"b"]) {
                plural = [singular stringByAppendingString:@"es"];
            } else {
                plural = [singular stringByAppendingString:@"en"];
            }
        } else if ([singular hasSuffix:@"us"]) {
            plural = [singular stringByReplacingOccurrencesOfString:@"us" withString:@"i"];
        } else if ([singular hasSuffix:@"um"]) {
            plural = [singular stringByReplacingOccurrencesOfString:@"um" withString:@"a"];
        } else {
            plural = [singular stringByAppendingString:@"s"];
        }
        [pluralArray addObject:plural];
    }
    
    return pluralArray;
}


-(NSDictionary *)countsOfWordsInString:(NSString *)givenString {
    
    NSMutableDictionary *wordCount = [NSMutableDictionary dictionary];
    
    // clean up incoming string to change case and remove punctuation
    
    NSString *caseString = [givenString lowercaseString];
    
    NSString *cleanString = [caseString stringByReplacingOccurrencesOfString:@"." withString:@""];
    
    cleanString = [cleanString stringByReplacingOccurrencesOfString:@"," withString:@""];
    
    cleanString = [cleanString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    cleanString = [cleanString stringByReplacingOccurrencesOfString:@";" withString:@""];
    
    // place individual words in string in an array
    
    NSArray *listOfWords = [cleanString componentsSeparatedByString:@" "];
    
    // iterate through array, count word repetition and place results in NSDictionary
    
    // begin -- modified code lifted from learn.co
    
    for (NSString *word in listOfWords) {
        if ([wordCount[word] integerValue] > 0) {
            NSInteger newCount = [wordCount[word] integerValue] + 1;
            wordCount[word] = @(newCount);
        } else {
            wordCount[word] = @1;
        }
    }
    
    // end -- modified code lifted from learn.co
    
    
    /* richard's attempt - it builds the dictionary but does not increment the wordcount
     
    NSInteger listLength = [listOfWords count];
    
    for (NSUInteger i = 0; i < listLength; i++) {
        
        NSString *trackingWord = listOfWords[i];
        
        NSInteger wordRepeat = 1;
        
        for (NSUInteger x = i + 1; x < listLength; x++) {
            
            if ([trackingWord isEqualToString:listOfWords[x]]) {
                wordRepeat++;
            }
        }
        
        wordCount[trackingWord] = [NSNumber numberWithInteger:wordRepeat];
     
    }
    */
    
    return [NSDictionary dictionaryWithDictionary:wordCount];
}


-(NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    
    /* $begin -- richard's attempt
    
    NSMutableDictionary *artistTitleGrouping = [[NSMutableDictionary alloc]init];
    
    NSArray *artistTitleArray = @[];
    
    for (NSString *artistTitleString in givenArray) {
        artistTitleArray = [artistTitleString componentsSeparatedByString:@" - "];
    }
    
    NSInteger artistTitleArrayCount = [artistTitleArray count];
    
    NSString *artist = @"";
    NSString *title = @"";
    
    NSMutableArray *titleArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < artistTitleArrayCount; i++) {
        if (i == 0 || i%2 == 0) {
            artist = artistTitleArray[i];
        } else {
            title = artistTitleArray[i];
            
            [titleArray addObject:title];
            
            [artistTitleGrouping setObject:titleArray forKey:artist];
            
        }
    }
    
    return [NSDictionary dictionaryWithDictionary:artistTitleGrouping];
    
    $ end -- richard's attempt
     
    */
    
    // learn.co solution
    
    NSMutableDictionary *artistsWithSongs = [[NSMutableDictionary alloc] init];
    
    for (NSString *string in array) {
        NSArray *artistAndSong = [string componentsSeparatedByString:@" - "];
        NSString *artist = artistAndSong[0];
        NSString *song = artistAndSong[1];
        
        if ([[artistsWithSongs allKeys] containsObject:artist]) {
            [artistsWithSongs[artist] addObject:song];
        } else {
            artistsWithSongs[artist] = [ @[song] mutableCopy];
        }
    }
    
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    for (NSString *artist in artistsWithSongs) {
        [artistsWithSongs[artist] sortUsingDescriptors:@[sortByNilAsc]];
    }
    
    return [NSDictionary dictionaryWithDictionary:artistsWithSongs];
    
    
}


@end
