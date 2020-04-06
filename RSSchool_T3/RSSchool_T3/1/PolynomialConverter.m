#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    NSMutableString *result = [NSMutableString new];
    BOOL write = NO;
    
    if ([numbers count] == 0) {
        return nil;
    }else {
        for (int y = ([numbers count] - 1); y >= 0; y--) {
            int k = [[numbers objectAtIndex:([numbers count] - 1 - y)] intValue];
            
            NSMutableString *mark = [NSMutableString new];
            
            if(k < 0){
                [mark appendString:@" - "];
            }else if(write){
                [mark appendString:@" + "];
            }
            
            if (k == 0) {
                continue;
            }else{
                switch (abs(k)) {
                    case 1:
                        write = YES;
                        [result appendString:mark];
                        [result appendString:@"x"];
                        break;
                    default:
                        write = YES;
                        if (y == 0) {
                            [result appendString:mark];
                            [result appendFormat:@"%d",abs(k)];
                        }else if(y == 1){
                            [result appendString:mark];
                            [result appendFormat:@"%dx",abs(k)];
                        }else{
                            [result appendString:mark];
                            [result appendFormat:@"%dx^%d",abs(k),y];
                        }
                        break;
                }
            }
        }
    }
    
    return result;
}
@end
