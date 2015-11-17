//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSArray *)arrayBySortingArrayAscending:(NSArray *)givenArray;

-(NSArray *)arrayBySortingArrayDescending:(NSArray *)givenArray;

-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)givenArray;

-(NSArray *)arrayByReversingArray:(NSArray *)givenArray;

-(NSString *)stringInBasicLeetFromString:(NSString *)givenString;

-(NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)givenArray;

-(NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)givenDictionary;

-(NSArray *)stringsBeginningWithAInArray:(NSArray *)givenArray;

-(NSInteger)sumOfIntegersInArray:(NSArray *)givenArray;

-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)givenArray;

-(NSDictionary *)countsOfWordsInString:(NSString *)givenString;

-(NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)givenArray;


@end
