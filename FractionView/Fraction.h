#import <Foundation/Foundation.h>

@interface Fraction: NSObject

@property int numerator, denominator;

+(Fraction*) allocF;
+(int)count;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

- (void) reduce;
// Add argument to receiver
-(Fraction *) add : (Fraction *) f;
// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f;
// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f;
// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f;
// Сменить знак дроби
-(void) changeSign;
// Вывести неправильную дробь в виде смешанной. Например: 5/3= 1 2/3
-(void) mix;

@end