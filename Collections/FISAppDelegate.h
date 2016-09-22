//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//
//arrayByAscendingSortingArray: that takes one NSArray argument and returns and NSArray.

-(NSArray *)arrayByAscendingSortingArray:(NSArray *)array;

//arrayByDescendingSortingArray: that takes one NSArray argument and returns an NSArray.

-(NSArray *)arrayByDescendingSortingArray:(NSArray *)array;


//arrayBySwappingFirstObjectWithLastObjectInArray: that takes one NSArray argument and returns an NSArray.

-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array;


//arrayByReversingArray: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByReversingArray:(NSArray *)array;


//stringInBasicLeetFromString: that takes one NSString argument and returns an NSString.
-(NSString *)stringInBasicLeetFromString:(NSString *)string;


//bisectArrayAt0: that takes one NSArray argument and returns an NSArray.
-(NSArray *)bisectArrayAt0:(NSArray *)array;


//arrayByFilteringHobbitsFromDictionary: that takes one NSDictionary argument and returns an NSArray.
-(NSArray *)arrayByFilteringHobbitsFromDictionary:(NSDictionary *)dictionary;


//arrayByFilteringStringsBeginningWithA: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByFilteringStringsBeginningWithA:(NSArray *)array;

//sumOfIntegerNumbersInArray: that takes one NSArray argument and returns an NSInteger.
-(NSInteger)sumOfIntegerNumbersInArray:(NSArray *)array;


//arrayByPluralizingStringsInArray: that takes one NSArray argument and returns an NSArray.
-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array;


//countsOfWordsInString: that takes one NSString argument and returns an NSDictionary.
-(NSDictionary *)countsOfWordsInString:(NSString *)string;

//dictionaryOfSongsByArtistFromArray: that takes one NSArray argument and returns an NSDictionary.

-(NSDictionary *)dictionaryOfSongsByArtistFromArray:(NSArray *)array;







@end
