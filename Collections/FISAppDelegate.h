//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

- (NSArray *)arrayBySortingArrayAscending: (NSArray *) firstArugment;

- (NSArray *)arrayBySortingArrayDescending: (NSArray *)secondArugment;

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray: (NSArray *)thirdArugment;

- (NSArray *)arrayByReversingArray: (NSArray *)fourthArugment;

- (NSString *)stringInBasicLeetFromString: (NSString *)fifthArugment;

- (NSArray *)splitArrayIntoNegativesAndPositives: (NSArray *)sixthArugment;

- (NSArray *)namesOfHobbitsInDictionary: (NSDictionary *)seventhArugment;

- (NSArray *)stringsBeginningWithAInArray: (NSArray *)eigthArugment;

- (NSInteger)sumOfIntegersInArray: (NSArray *)ninthArugment;

- (NSArray *)arrayByPluralizingStringsInArray: (NSArray *)tenthArugment;

- (NSDictionary *)countsOfWordsInString: (NSString *)eleventhArugment;

- (NSDictionary *)songsGroupedByArtistFromArray: (NSArray *)twelveArugment;

@end
