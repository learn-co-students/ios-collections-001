//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)arguement {
    NSSortDescriptor *sortAscending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    arguement  = [arguement sortedArrayUsingDescriptors:@[sortAscending]];
    return arguement;
}

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)arguement {
    NSSortDescriptor *sortAscending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    arguement  = [arguement sortedArrayUsingDescriptors:@[sortAscending]];
    return arguement;
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)arguement {
    NSMutableArray *temporarilyMutable = [NSMutableArray arrayWithArray:arguement];
    NSUInteger arrayLength = arguement.count-1;
    [temporarilyMutable replaceObjectAtIndex:0 withObject:arguement[arrayLength]];
    [temporarilyMutable replaceObjectAtIndex:arrayLength withObject:arguement[0]];
    
    arguement = temporarilyMutable;
    return arguement;
}

- (NSArray *)arrayByReversingArray:(NSArray *)arguement {
    arguement = [[arguement reverseObjectEnumerator] allObjects];
    return arguement;
}

- (NSString *)stringInBasicLeetFromString:(NSString *)arguement {
    arguement = [arguement stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
    arguement = [arguement stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
    arguement = [arguement stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
    arguement = [arguement stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
    arguement = [arguement stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
    arguement = [arguement stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    return arguement;
}

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)arguement {
    NSMutableArray *negArrayOne = [[NSMutableArray alloc] init];
    NSMutableArray *posArrayTwo = [[NSMutableArray alloc] init];
    
    for (NSString *what in arguement){
        if([what integerValue]<0) {
            [negArrayOne addObject:what];
        } else {
            [posArrayTwo addObject:what];
        }
        
    }
    arguement = @[negArrayOne,posArrayTwo];
    
    return arguement;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)arguement {
    NSArray *hobbitses = [arguement allKeysForObject:@"hobbit"];
    
    return hobbitses;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)arguement {
    NSPredicate *beginsWithA = [NSPredicate predicateWithFormat:@"self LIKE[c] 'a*'"];
    NSArray *newArray = [arguement filteredArrayUsingPredicate:beginsWithA];
    arguement = newArray;
    return arguement;
}

- (NSNumber *)sumOfIntegersInArray:(NSArray *)arguement {
    NSInteger sum = 0;
    for (NSNumber *num in arguement){
        NSInteger numBer = [num intValue];
        sum += numBer;
    }
    NSLog(@"%li",sum);
/*
    NSNumber *theSum = [arguement valueForKey:@"@sum.self"];   HOW DO I FIX THIS ONE
    NSLog(@"%@",theSum);
    NSInteger theIntegerSum = [theSum integerValue];
*/
    NSNumber *newSum = @(sum);
    
  
 return newSum; //HAD TO CHANGE THIS TO NSNUMBER IN ORDER FOR IT TO WORK
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)arguement {
    NSMutableArray *mutableArguement = [NSMutableArray arrayWithArray:arguement];
    NSInteger i = 0;
    NSInteger size = mutableArguement.count;
    for (i=0; i<size; i++) {
        NSLog(@"%@",mutableArguement[i]);
        NSString *plural = [mutableArguement[i] stringByAppendingString:@"s"];
        plural = [plural stringByReplacingOccurrencesOfString:@"foots" withString:@"feet"];
        plural = [plural stringByReplacingOccurrencesOfString:@"boxs" withString:@"boxes"];
        plural = [plural stringByReplacingOccurrencesOfString:@"radiuss" withString:@"radii"];
        plural = [plural stringByReplacingOccurrencesOfString:@"triviums" withString:@"trivia"];
        plural = [plural stringByReplacingOccurrencesOfString:@"oxs" withString:@"oxen"];
        [mutableArguement replaceObjectAtIndex:i withObject:plural];
        
    }
    arguement = mutableArguement;
    arguement = mutableArguement;
    return arguement;
}

- (NSDictionary *)countsOfWordsInString:(NSString *)arguement {
    NSCountedSet *mobyCounted = [NSCountedSet new];
    [arguement enumerateSubstringsInRange:NSMakeRange(0, [arguement length])
                                  options:NSStringEnumerationByWords | NSStringEnumerationLocalized
                               usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop){
                                
                                   [mobyCounted addObject:[substring lowercaseString]];
                            }];
// NOT SURE HOW I GOT THIS TO WORK BUT IT WAS ABOUT 100 ITERATIONS.... FML... UNDERSTAND BELOW, NOT ABOVE WELL
    NSMutableArray *mobyMutableArray = [NSMutableArray array];
    NSDictionary *dict = [[NSDictionary alloc] init];
    NSMutableDictionary *dictionaryMuted = [[NSMutableDictionary alloc] init];
    for (NSNumber *num in mobyCounted) {
        dict = @{num:@([mobyCounted countForObject:num])};
        [mobyMutableArray addObject:dict];
        [dictionaryMuted addEntriesFromDictionary:dict];
    }
    NSLog(@"%@",dictionaryMuted);

    
    return dictionaryMuted;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)arguement {
    
//WILL HAVE TO COME BACK TO THIS ONE AS I'VE SPENT TOO MUCH TIME ON THIS PROJECT
    
    NSDictionary *songsByArtist = @{ @"Coldplay"     : @[ @"Clocks"          ,
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
