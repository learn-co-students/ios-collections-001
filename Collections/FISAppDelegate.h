//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)arguement;
- (NSArray *)arrayBySortingArrayDescending:(NSArray *)arguement;
- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)arguement;
- (NSArray *)arrayByReversingArray:(NSArray *)arguement;
- (NSString *)stringInBasicLeetFromString:(NSString *)arguement;
- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)arguement;
- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)arguement;
- (NSArray *)stringsBeginningWithAInArray:(NSArray *)arguement;
- (NSNumber *)sumOfIntegersInArray:(NSArray *)arguement;   //HAD TO CHANGE THIS TO NSNUMBER IN ORDER FOR IT TO WORK
- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)arguement;
- (NSDictionary *)countsOfWordsInString:(NSString *)arguement;
- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)arguement;


@end
