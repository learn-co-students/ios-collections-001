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

- (NSArray *) arrayBySortingArrayAscending: (NSArray *)array {
    NSSortDescriptor *sortByAssc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sorted = [array sortedArrayUsingDescriptors:@[sortByAssc]];
    return sorted;
}

- (NSArray *) arrayBySortingArrayDescending: (NSArray *)array {
    NSSortDescriptor *sortByDesc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    NSArray *sorted = [array sortedArrayUsingDescriptors:@[sortByDesc]];
    return sorted;
}
- (NSArray *) arrayBySwappingFirstObjectWithLastObjectInArray: (NSArray *)array {
    NSMutableArray *mArray = [array mutableCopy];
    NSUInteger num = [array count];
    id lastObject = [array objectAtIndex:(num-1)];
    id firstObject = [array objectAtIndex:0];
    [mArray removeObjectAtIndex:0];
    [mArray insertObject:lastObject atIndex:(0)];
    [mArray removeObjectAtIndex:(num-1)];
    [mArray insertObject:firstObject atIndex:(num-1)];
    NSArray *finalArray = [mArray mutableCopy];
    return finalArray;
}

- (NSArray *) arrayByReversingArray: (NSArray *)array {
    NSArray *reversed = [[array reverseObjectEnumerator] allObjects];
    return reversed;
}

- (NSString *) stringInBasicLeetFromString: (NSString *)string {
    NSString *str = [string stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
    str = [str stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
    str = [str stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
    str = [str stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
    str = [str stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
    str = [str stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    return str;
}


- (NSArray *) splitArrayIntoNegativesAndPositives: (NSArray *)array {
    NSSortDescriptor *sortByAssc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sorted = [array sortedArrayUsingDescriptors:@[sortByAssc]];
    NSMutableArray *negNumbers = [[NSMutableArray alloc] init];
    NSMutableArray *posNumbers = [[NSMutableArray alloc] init];
    NSPredicate *negPredicate = [NSPredicate predicateWithFormat:@"integerValue < 0"];
    negNumbers = [array filteredArrayUsingPredicate:negPredicate];
    NSPredicate *posPredicate = [NSPredicate predicateWithFormat:@"integerValue > 0"];
    posNumbers = [array filteredArrayUsingPredicate:posPredicate];
    NSArray *newArray = @[negNumbers, posNumbers];
    return newArray;
    
}
- (NSArray *) namesOfHobbitsInDictionary: (NSDictionary *)dictionary {
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for(NSString *key in [dictionary allKeys]) {
        if ([dictionary[key]  isEqual: @"hobbit"]) {
            [names addObject:key];
        }
    }
    NSArray *newArray = [names mutableCopy];
    return newArray;
}

- (NSArray *) stringsBeginningWithAInArray: (NSArray *)array {
    NSMutableArray *wordswithA = [[NSMutableArray alloc] init];
    NSUInteger num = [array count];
    for (NSUInteger i = 0; i < num; i++) {
        NSString *newString = array[i];
        //NSLog(@"%@", newString);
        NSString *firstletter = [newString substringToIndex:1];
        //NSLog(@"%@", firstletter);
        if ([firstletter isEqualToString:@"a"] || [firstletter isEqualToString:@"A"]) {
            [wordswithA addObject:newString];
        }
    }
    NSArray *newArray = [wordswithA mutableCopy];
    return newArray;

}
- (NSInteger) sumOfIntegersInArray: (NSArray *)array {
    NSInteger sum = 0;
    for (NSNumber *num in array) {
        sum += [num integerValue];
    }
    return sum;

}
- (NSArray *) arrayByPluralizingStringsInArray: (NSArray *)array {

    NSMutableArray *plurals = [[NSMutableArray alloc] init];
    NSUInteger num = [array count];
    for (NSUInteger i = 0; i < num; i ++) {
        if ([array[i] isEqualToString:@"hand"]) {
            [plurals addObject:@"hands"];
        }
        if ([array[i] isEqualToString:@"foot"]) {
            [plurals addObject:@"feet"];
        }
        if ([array[i] isEqualToString:@"table"]) {
            [plurals addObject:@"tables"];
        }
        if ([array[i] isEqualToString:@"box"]) {
            [plurals addObject:@"boxes"];
        }
        if ([array[i] isEqualToString:@"ox"]) {
            [plurals addObject:@"oxen"];
        }
        if ([array[i] isEqualToString:@"axle"]) {
            [plurals addObject:@"axles"];
        }
        if ([array[i] isEqualToString:@"radius"]) {
            [plurals addObject:@"radii"];
        }        if ([array[i] isEqualToString:@"trivium"]) {
            [plurals addObject:@"trivia"];
        }
        if ([array[i] isEqualToString:@"knee"]) {
            [plurals addObject:@"knees"];
        }
    }
    NSArray *newArray = [plurals mutableCopy];
    return newArray;

}
- (NSDictionary *) countsOfWordsInString: (NSString *)string {
    
    NSCharacterSet *validChars = [NSCharacterSet alphanumericCharacterSet];
    NSCharacterSet *invalidChars = [validChars invertedSet];
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
    NSString* nocharacters = [[string.lowercaseString componentsSeparatedByCharactersInSet:invalidChars] componentsJoinedByString:@" "];
    NSArray *Array = [nocharacters componentsSeparatedByString:@" "];
    NSMutableArray *mArray = [Array mutableCopy];
    [mArray removeObject:@""];
    NSInteger arrayLength;
    NSInteger count;
    NSInteger subtraction;
    NSNumber *total;

    for (NSUInteger i = 0; i < arrayLength; i++) {
        i = 0;
        NSString *firstWord = mArray[i];
        arrayLength = [mArray count];
        [mArray removeObject:firstWord];
        count = mArray.count;
        subtraction = arrayLength-count;
        total = @(subtraction);
        [newDictionary setObject:total forKey:firstWord];
        //NSLog(@"%@", newDictionary);
        
    }
    
    NSDictionary *notM = [newDictionary mutableCopy];
    return notM;
    
    
    
    
}
- (NSDictionary *) songsGroupedByArtistFromArray: (NSArray *)array {
    NSInteger arrayLength = array.count;
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
    NSMutableString *mempty = [[NSMutableString alloc] init];

    NSArray *sortedArray = [array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    //NSLog(@"%@", sortedArray);
    NSMutableArray *artist = [[NSMutableArray alloc] init];
    NSMutableArray *song = [[NSMutableArray alloc] init];
    NSMutableArray *arrayofsong = [[NSMutableArray alloc] init];

    //string = [string substringToIndex:string.length-(string.length>0)];
    
    for (NSUInteger i = 0; i < arrayLength; i++) {
        NSString *word = sortedArray[i];
        NSArray *splitStringArray = [word componentsSeparatedByString:@" - "];
        //NSLog(@"%@", splitStringArray);
        NSString *first = splitStringArray[0];
        //NSLog(@"%@ %@", first, first.class);
        [artist addObject:first];
        NSString *second = splitStringArray[1];
        [song addObject:second];

    }
    NSLog(@"%@", artist);
    NSLog(@"%@", song);
    
    //NSMutableArray *artist2 = [[NSMutableArray alloc] init];
    //NSMutableArray *song2 = [[NSMutableArray alloc] init];
    //NSString *finartist1;
    //NSString *finsong1;
    
    
    //for (NSUInteger i = 0; i < arrayLength; i++) {
        
    //    NSString *finartist = artist[i];
    //    NSString *finsong = song[i];
    //    finartist1 = [finartist1 substringToIndex:finartist.length-(finartist.length>0)];
    //    finsong1 = [finsong1 substringToIndex:finsong.length-(finsong.length>0)];
    //    [artist2 addObject:finartist1];
    //    [song2 addObject:finsong1];
    
    //}
   // NSLog(@"%@", artist2);
   // NSLog(@"%@", song2);
    
    NSString *firstartist;
    NSInteger beforeRemoving;
    NSInteger afterRemoving;
    NSInteger difference;
    NSNumber *total;
    NSMutableArray *artistwithdeletes = [artist mutableCopy];
    
    
    for (NSUInteger i = 0; i < arrayLength; i) {
        firstartist = artistwithdeletes[i];
        
        beforeRemoving = artistwithdeletes.count;
        [artistwithdeletes removeObject:firstartist];
        afterRemoving = artistwithdeletes.count;
        difference = beforeRemoving-afterRemoving;
        total = @(difference);
        [arrayofsong addObject:total];
        
        artistwithdeletes = [artist mutableCopy];
        i += difference;
        
    }

     //NSLog(@"%@", arrayofsong);
    
    
    
     NSMutableArray *arrayOfArtist = [[NSMutableArray alloc] init];
    NSString *firstartistagain;
    for (NSUInteger i = 0; i < arrayofsong.count; i++) {
        firstartistagain = artistwithdeletes[0];
        [arrayOfArtist addObject:firstartistagain];
        [newDictionary setObject:mempty forKey:firstartistagain];
        [artistwithdeletes removeObject:firstartistagain];
    
        
    }
     
    //NSLog(@"%@", newDictionary);
    //NSLog(@"%@", arrayOfArtist);

    NSString *firstartistagainagain;
    for (NSUInteger i = 0; i < arrayOfArtist.count; i++) {
        firstartistagainagain = arrayOfArtist[i];
        NSNumber *index = arrayofsong[i];
        NSUInteger newindex = index.integerValue;
        NSUInteger somenumber = 0;
        NSArray* slicedArray = [song subarrayWithRange:NSMakeRange(somenumber,newindex)];
        newDictionary[firstartistagainagain] = slicedArray;
        for (NSUInteger j = 0; j < newindex; j++) {
            [song removeObject:song[0]];
        }
    
//expected: {Coldplay = (Clocks, Strawberry Swing, Viva la Vida); Johnny Flynn = (Cold Bread, In April); Ryan Adams = (La Cienega Just Smiled, When The Stars Go Blue); Sigur Rós = (Andvari, Glósóli);},
  //   got: {Coldplay  = ( Clocks,  Strawberry Swing,  Viva la Vida); Ryan Adams  = ( La Cienega Just Smiled,  When The Stars Go Blue); Johnny Flynn  = ( Cold Bread,  In April); Sigur Rós  = ( Andvari,  Glósóli);}
        
        
    }
    NSLog(@"%@", newDictionary);
    NSDictionary *finally = [newDictionary mutableCopy];
    return finally;
}

@end
