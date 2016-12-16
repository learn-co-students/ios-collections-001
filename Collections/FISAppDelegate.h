//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSArray *)arrayBySortingArrayAscending:(NSArray *)list;
-(NSArray *)arrayBySortingArrayDescending:(NSArray *)list;
-(NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)list;
-(NSArray *)arrayByReversingArray:(NSArray *)list;
-(NSString *)stringInBasicLeetFromString:(NSString *)basicLeet;
-(NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)list;
-(NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)dictionary;
-(NSArray *)stringsBeginningWithAInArray:(NSArray *)list;
-(NSInteger)sumOfIntegersInArray:(NSArray *)list;
-(NSArray *)arrayByPluralizingStringsInArray:(NSArray *)list;
-(NSDictionary *)countsOfWordsInString:(NSString *)sentence;
-(NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)songList;

@end
