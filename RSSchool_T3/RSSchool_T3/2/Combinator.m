#import "Combinator.h"

@implementation Combinator
-(int)binomeRecursive:(int) n andBy:(int) k{
    if ((k == 0) || (n == k)) {
        return 1;
    }else{
        return([self binomeRecursive:(n-1) andBy:(k)]+[self binomeRecursive:(n-1) andBy:(k-1)]);
    }
}

- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    int m = [array[0]intValue];
    int n = [array[1]intValue];
    int k = 1;
    while(k < n){
        if([self binomeRecursive:n andBy:k] == m){
            return[NSNumber numberWithInt:(k)];
        }
        k++;
    }
    return nil;
}
@end
