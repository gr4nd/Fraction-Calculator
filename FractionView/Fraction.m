#import "Fraction.h"

static int gCounter;

@implementation Fraction
{
    //int numerator; заменены свойствами
    //int denominator;
}

@synthesize numerator, denominator;

+(Fraction*) allocF
{
    extern int gCounter; ++gCounter;
    return [Fraction alloc];
}

+(int)count
{
    extern int gCounter;
    return gCounter;
}

-(double)convertToNum{ // конвертирует в число
    if(denominator!=0) return (double) numerator/denominator;
    else return NAN;
}

-(void) print;
{
    NSLog(@"%i/%i", numerator,denominator);
}

-(void) setTo: (int) n over: (int) d
{
    numerator=n;
    if(d==0){NSLog(@"Деление на ноль!");}
    if(d<0){numerator=-numerator; denominator=-d;}
    else denominator=d;
}

-(void) setNumerator:(int)n
{
    numerator=n;
}

-(void) setDenominator:(int)d
{
    if(d==0){NSLog(@"Деление на ноль!");}
    if(d<0){numerator=-numerator; denominator=-d;}
    else denominator=d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(void) reduce
{
    int u=self.numerator;
    int v=self.denominator;
    int tmp;
    while(v!=0){
        tmp=u%v; u=v;
        v=tmp;
    }   //u=НОД
    /*numerator/=u;
    denominator/=u;
    if(denominator<0){
        numerator=-numerator;
        denominator=-denominator;*/

    self.numerator/=u;
    self.denominator/=u;
    if(self.denominator<0){
        self.numerator=-self.numerator;
        self.denominator=-self.denominator;
    }
}

- (Fraction *) add:(Fraction *)f
{
    self.numerator=f.denominator*numerator+denominator*f.numerator;
    self.denominator=denominator*f.denominator;
    [self reduce];
    return self;
}

- (Fraction *) subtract:(Fraction *)f
{
    self.numerator=f.denominator*numerator-denominator*f.numerator;
    self.denominator=denominator*f.denominator;
    [self reduce];
    return self;
}

- (Fraction *) multiply:(Fraction *)f{
    self.numerator=numerator*f.numerator;
    self.denominator=denominator*f.denominator;
    [self reduce];
    return self;
}


- (Fraction *) divide:(Fraction *)f{
    self.numerator=numerator*f.denominator;
    self.denominator=denominator*f.numerator;
    if(self.denominator<0){
        self.numerator=-self.numerator;
        self.denominator=-self.denominator;
    }
    [self reduce];
    return self;
}

-(void) changeSign
{
    numerator=-numerator;
}

-(void) mix
{
    int numerat=numerator;
    if(numerator<0) numerat=-numerator;
    NSLog(@"%i/%i = %i %i/%i",numerator,denominator,numerator/denominator,numerat%denominator,denominator);
}

/*-(id)initTo:(int)o :over{
    self =[super init];
    if (self) {
        // переопределить метод init
        [(id) init setNumerator:(int) setDenominator:(int)];
    }
    return self;
}*/

@end