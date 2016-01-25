//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

- (NSArray *)arrayBySortingArrayAscending: (NSArray *)array {
    
    NSSortDescriptor *sortedArray = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    
    NSArray *thing = [array sortedArrayUsingDescriptors:@[sortedArray]];
    
    return thing;
}

- (NSArray *)arrayBySortingArrayDescending: (NSArray *)array {
   
    NSSortDescriptor *sortedArray = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    
    NSArray *thing = [array sortedArrayUsingDescriptors:@[sortedArray]];
    
    return thing;
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray: (NSArray *)array {
    
    NSMutableArray *mArray = [array mutableCopy];

    NSUInteger last = [mArray count]-1;
    
    [mArray exchangeObjectAtIndex:0 withObjectAtIndex:last];
    
    return mArray;
}

- (NSArray *)arrayByReversingArray: (NSArray *)array {
    
    NSMutableArray *mArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = [array count]-1; i<[array count];i--) {
        [mArray addObject:array[i]];
    }
    return mArray;
}

- (NSString *)stringInBasicLeetFromString: (NSString *)string {

    NSString *strNew = [string stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
    NSString *strNew1 = [strNew stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
    NSString *strNew2 = [strNew1 stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
    NSString *strNew3 = [strNew2 stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
    NSString *strNew4 = [strNew3 stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    NSString *strNew5 = [strNew4 stringByReplacingOccurrencesOfString:@"s" withString:@"5"];

    return strNew5;
    
}

- (NSArray *)splitArrayIntoNegativesAndPositives: (NSArray *)array {
    NSMutableArray *final = [[NSMutableArray alloc]init];
    NSMutableArray *positives = [[NSMutableArray alloc]init];
    NSMutableArray *negatives = [[NSMutableArray alloc]init];

    for (NSNumber *number in array) {
        
        if ([number integerValue] < 0) {
            [negatives addObject:number];
            
        } else if ([number integerValue] >= 0) {
            [positives addObject:number];
            
        }
    }

    [final addObject:negatives];
    [final addObject:positives];
    
    return final;

}

- (NSArray *)namesOfHobbitsInDictionary: (NSDictionary *)dictionary {

    NSMutableArray *hobbits = [[NSMutableArray alloc]init];
    
    for (NSString *name in dictionary) {
        if ([dictionary[name] isEqualToString: @"hobbit"]) {
            [hobbits addObject:name];
        }
    }
    return hobbits;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"self BEGINSWITH[c] 'a'"];
    NSArray *filteredArr = [array filteredArrayUsingPredicate:pred];

    return filteredArr;
}

- (NSInteger )sumOfIntegersInArray:(NSArray *)array {
    
    NSInteger total = 0;
    
    for (NSNumber *n in array) {
        total += [n integerValue];
    }
    return total;
    
}

- (NSArray *)arrayByPluralizingStringsInArray: (NSArray *)array {
    
    NSMutableArray *mArray = [[NSMutableArray alloc]init];
    
    for (NSString *item in array) {
        if ([item isEqualToString: @"foot"]) {
            [mArray addObject:@"feet"];
        }else if ([item isEqualToString: @"ox"]) {
            [mArray addObject:@"oxen"];

        }else if ([item isEqualToString: @"hand"]) {
            [mArray addObject:@"hands"];

        }else if ([item isEqualToString: @"box"]) {
            [mArray addObject:@"boxes"];

        }else if ([item isEqualToString: @"axle"]) {
            [mArray addObject:@"axles"];

        }else if ([item isEqualToString: @"radius"]) {
            [mArray addObject:@"radii"];

        }else if ([item isEqualToString: @"trivium"]) {
            [mArray addObject:@"trivia"];

        }else if ([item isEqualToString: @"knee"]) {
            [mArray addObject:@"knees"];

        }else if ([item isEqualToString: @"table"]) {
            [mArray addObject:@"tables"];
        }

    }
    return mArray;
}

- (NSDictionary *)countsOfWordsInString: (NSString *)string {
    
    NSMutableDictionary *final = [[NSMutableDictionary alloc]init];
    
    NSString *lowerstring = [string lowercaseString];
    
    NSString *string1 = [lowerstring stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSString *string2 = [string1 stringByReplacingOccurrencesOfString:@"." withString:@""];
    NSString *string3 = [string2 stringByReplacingOccurrencesOfString:@"," withString:@""];
    
    NSArray *array = [string3 componentsSeparatedByString:@" "];
    
    for (NSString *word in array) {
        NSLog(@"XX%@XX", word);
        
    }
    
    NSInteger wordCount = 1;
    NSNumber *nWordCount = @(wordCount);
    
    for (NSString *word in array) {
        if (![[final allKeys]containsObject:word]) {
            [final setObject: nWordCount forKey:word];
        } else {
            final[word] = @([final[word] intValue] + 1);
        }
    }
    
    
    return final;
}

- (NSDictionary *)songsGroupedByArtistFromArray: (NSArray *)array {
    
    NSMutableDictionary *final = [[NSMutableDictionary alloc]init];
    
    for (NSString *artistAndSong in array) {
        NSString *newArtistAndSong = [artistAndSong stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSArray *hold = [newArtistAndSong componentsSeparatedByString: @"-"];
        NSArray *hold1 = @[hold[1]];
        if (![[final allKeys]containsObject:hold[0]]) {
            [final setObject: hold1 forKey:hold[0]];
        } else {
            [final[hold1] addObject:hold[1]];
        }
    }
    return final;
}

@end
