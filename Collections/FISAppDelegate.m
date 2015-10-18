//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

- (NSArray *)arrayBySortingArrayAscending:(NSArray *) firstArugment {
    NSSortDescriptor *sortByAscending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *arraySortedByAsc = [firstArugment sortedArrayUsingDescriptors:@[sortByAscending]];
    return arraySortedByAsc;
}

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)secondArugment {
    NSSortDescriptor *sortByDes = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    NSArray *arraySortedByDes = [secondArugment sortedArrayUsingDescriptors:@[sortByDes]];
    return arraySortedByDes;
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)thirdArugment {
    NSMutableArray *thirdArugmentMuta = [thirdArugment mutableCopy];
    thirdArugmentMuta[0]=thirdArugment[thirdArugment.count-1];
    thirdArugmentMuta[thirdArugment.count -1]=thirdArugment[0];
    return thirdArugmentMuta;
}

- (NSArray *)arrayByReversingArray:(NSArray *)fourthArugment {
    NSMutableArray *reveredArray = [[NSMutableArray alloc]init];
    for (NSUInteger i=0; i<fourthArugment.count; i++) {
        reveredArray[i]=fourthArugment[fourthArugment.count-1-i];
    }
    return reveredArray;
}

- (NSString *)stringInBasicLeetFromString:(NSString *)fifthArugment {
    NSMutableString *fifthArugementMuta = [[NSMutableString alloc]init];
    for (NSUInteger i=0; i<fifthArugment.length; i++) {
            if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"a"]) {
                [fifthArugementMuta appendString:@"4"];
            }
            else if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"s"]) {
                [fifthArugementMuta appendString: @"5"];
            }
            else if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"i"]) {
                [fifthArugementMuta appendString: @"1"];
            }
            else if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"l"]) {
                [fifthArugementMuta appendString: @"1"];
            }
            else if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"e"]) {
                [fifthArugementMuta appendString: @"3"];
            }
            else if ([[fifthArugment substringWithRange:NSMakeRange(i,1)] isEqualToString:@"t"]) {
                [fifthArugementMuta appendString: @"7"];
            }
            else {
                [fifthArugementMuta appendFormat: @"%@",[fifthArugment substringWithRange:NSMakeRange(i,1)]];
            }
       }
    NSLog(@"%@", fifthArugementMuta);
    return fifthArugementMuta;
}

- (NSArray *) splitArrayIntoNegativesAndPositives:(NSArray *)sixthArugment {
    NSMutableArray *splitedArray = [[NSMutableArray alloc]init];
    NSPredicate *negative = [NSPredicate predicateWithFormat:@"self <0"];
    NSPredicate *positve = [NSPredicate predicateWithFormat:@"self >=0"];
    NSArray *negativeArray = [sixthArugment filteredArrayUsingPredicate:negative];
    NSArray *positiveArray = [sixthArugment filteredArrayUsingPredicate:positve];
    [splitedArray addObject:negativeArray];
    [splitedArray addObject:positiveArray];
    NSLog(@"%@", splitedArray);
    return splitedArray;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)seventhArugment {
/*    NSMutableArray *characterNames = [[NSMutableArray alloc]init];
    for (NSString *key in seventhArugment) {
        if ([seventhArugment[key] isEqualToString:@"hobbit"]) {
            [characterNames addObject:key];
        }
    }*/
    NSArray *characterNames = [seventhArugment allKeysForObject:@"hobbit"];
    return characterNames;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)eigthArugment {
    NSMutableArray *arrayWithA = [[NSMutableArray alloc]init];
    for (NSString *stringInArray in eigthArugment) {
        if ([[stringInArray substringWithRange:NSMakeRange(0, 1)]isEqualToString:@"a"]||[[stringInArray substringWithRange:NSMakeRange(0,1)] isEqualToString:@"A"]) {
            [arrayWithA addObject:stringInArray];
        }
    }
    return arrayWithA;
}

- (NSInteger)sumOfIntegersInArray:(NSArray *)ninthArugment {
    NSInteger sumOfIntegers = 0;
    for (NSNumber *integerInArray in ninthArugment) {
        sumOfIntegers = sumOfIntegers + integerInArray.integerValue;
    }
    return sumOfIntegers;
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)tenthArugment {
    NSMutableArray *tenthArugmentMuta = [[NSMutableArray alloc]init];
    for (NSString *stringsInArray in tenthArugment) {
        if ([stringsInArray isEqualToString:@"foot"]) {
            [tenthArugmentMuta addObject:@"feet"];
        }
        else if ([stringsInArray isEqualToString:@"box"]){
            [tenthArugmentMuta addObject:@"boxes"];
        }
        else if ([stringsInArray isEqualToString:@"ox"]){
            [tenthArugmentMuta addObject:@"oxen"];
        }
        else if ([stringsInArray isEqualToString:@"radius"]){
            [tenthArugmentMuta addObject:@"radii"];
        }
        else if ([stringsInArray isEqualToString:@"trivium"]){
            [tenthArugmentMuta addObject:@"trivia"];
        }
        else {
            NSString *pluralString = [stringsInArray stringByAppendingString:@"s"];
            [tenthArugmentMuta addObject:pluralString];
        }
    }
    return tenthArugmentMuta;
}

- (NSDictionary *)countsOfWordsInString:(NSString *)eleventhArugment {
    NSMutableDictionary *wordCount = [[NSMutableDictionary alloc]init];
    NSArray *wordsInArray = [eleventhArugment componentsSeparatedByString:@" "];
    for (NSString *wordInArray in wordsInArray) {
        NSString *newWordInArray = @"";
        if ([wordInArray containsString:@"."]||[wordInArray containsString:@","]||[wordInArray containsString:@";"]||[wordInArray containsString:@"-"]) {
            NSInteger wordLength = wordInArray.length - 1;
            newWordInArray = [wordInArray substringToIndex:(wordLength)].lowercaseString;
        }
        else {
            newWordInArray = wordInArray.lowercaseString;
        }
        if ([wordCount objectForKey:newWordInArray]){
            NSNumber *incramentCount = wordCount[newWordInArray];
            wordCount[newWordInArray]= @(incramentCount.integerValue + 1);
        }
        else {
            wordCount[newWordInArray]=@(1);
        }
    }
    return wordCount;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)twelveArugment {
    NSMutableDictionary *combinedSongList = [[NSMutableDictionary alloc]init];
    NSMutableDictionary *sortedSongList = [[NSMutableDictionary alloc]init];
    NSSortDescriptor *sortNameByAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    for (NSString *stringsInArray in twelveArugment) {
        NSArray *splitedString = [stringsInArray componentsSeparatedByString:@" - " ];
        NSMutableArray *listOfSongsByArtist = [[NSMutableArray alloc]init];
        if ([combinedSongList objectForKey:splitedString[0]]) {
            listOfSongsByArtist=combinedSongList[splitedString[0]];
            [listOfSongsByArtist addObject:splitedString[1]];
            combinedSongList[splitedString[0]]=listOfSongsByArtist;
        }
        else {
            [listOfSongsByArtist addObject: splitedString[1]];
            combinedSongList[splitedString[0]]= listOfSongsByArtist;
        }
    }
    for (NSString *artistName in combinedSongList) {
        NSArray *sortedListOfSongs = [combinedSongList[artistName] sortedArrayUsingDescriptors:@[sortNameByAsc]];
        sortedSongList[artistName]=sortedListOfSongs;
    }
    
    return sortedSongList;
}

/**
 
 * Define your methods here.
 
 */


@end
