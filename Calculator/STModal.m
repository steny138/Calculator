//
//  STModal.m
//  Calculator
//
//  Created by StenyMac on 2014/2/8.
//  Copyright (c) 2014年 Steny. All rights reserved.
//

#import "STModal.h"

@implementation STModal

-(id)init
{
    self = [super init];
    if(self)
    {
        trueNum = 0 ;
        currentSymbol = NoSymbol;
        isPoint = NO;
        integer = 0;
        fraction =0;
        
        numFormatter = [[NSNumberFormatter alloc]init];
    }
    return self;
}

-(NSString *)numberString{
    [self setNumber];
    NSString *num = @"";

    if (isPoint)
    {
        [numFormatter setMaximumFractionDigits:fracLength];
        [numFormatter setMinimumFractionDigits:fracLength];
        num =[numFormatter stringFromNumber:[NSNumber numberWithDouble:trueNum]];
    }
    else{
        if (fraction >0) {
            [numFormatter setMaximumFractionDigits:fracLength];
            num =[numFormatter stringFromNumber:[NSNumber numberWithDouble:trueNum]];
        }
        else
            num =[NSString stringWithFormat:@"%.0f",integer];
    }

    return num;
}
-(void)clickNumber:(NSInteger)number
{
    if (isPoint) {
        fracLength++;
        fraction = fraction * 10 + number;
    }
    else
        integer = integer * 10 + number;
}
-(void)clickSymbol:(Symbols)symbol
{
    [self setNumber];
    fracLength=0;
    switch (symbol) {
        case AmountSymbol:
        {
            trueNum = [self caluteNumber:tempNum number:trueNum symbol:currentSymbol];
            [self separateNumber];
            tempNum = 0;
            isPoint = NO;
            break;
        }
        case PlusMinusSymbol:
        case ModSymbol:
        {
            trueNum = [self caluteNumber:tempNum number:trueNum symbol:symbol];
            [self separateNumber];
            tempNum = 0;
            isPoint = NO;
            break;
        }
        case CLearSymbol:
        {
            trueNum =0;
            tempNum =0;
            integer =0;
            fraction =0;
            isPoint = NO;
            currentSymbol = NoSymbol;
            break;
        }
        case PointSymbol:
        {
            isPoint =YES;
            break;
        }
        default:
        {
            if(currentSymbol != NoSymbol)
                tempNum = [self caluteNumber:tempNum number:trueNum symbol:currentSymbol];
            else
                tempNum = trueNum ;
            currentSymbol = symbol;
            isPoint = NO;
            trueNum = 0;
            fraction = 0;
            integer = 0;
            break;
        }
    }
}
-(void)setNumber
{
    trueNum = integer + (fraction* pow(0.1,fracLength));
}
-(double)caluteNumber:(double)num1 number:(double)num2 symbol:(Symbols)symbol
{
    switch (symbol) {
        case PlusSymbol:
            return num1+num2;
            break;
        case MinusSymbol:
            return num1-num2;
            break;
        case MultiSymbol:
            return num1*num2;
            break;
        case DivSymbol:
            return num1/num2;
            break;
        case PlusMinusSymbol:
            return num2* -1;
        case ModSymbol:
            return num2 * 0.01;
            break;
        default:
            return 0;
            break;
    }
}
-(void)separateNumber
{
    integer = floor(trueNum);
    NSDecimalNumber *trueNumDecimal = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%f",trueNum]];
    NSDecimalNumber *integerDecimal = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%f",integer]];
    NSDecimalNumber *fractionDecimal = [trueNumDecimal decimalNumberBySubtracting:integerDecimal];
    int fractionLength = 0 ;
    fraction = [fractionDecimal doubleValue];
    fraction = [self getDigit:fraction length:&fractionLength];
    fracLength = fractionLength;
}
-(double)getDigit:(double)originNum length:(int *)leng
{
    NSDecimalNumber *originNumDecimal = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%f",originNum]];
    NSDecimalNumber *integerDecimal = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%d",10]];
    NSDecimalNumber *newDecimal = [originNumDecimal decimalNumberByMultiplyingBy:integerDecimal];
    double newNum = [newDecimal doubleValue];
    *leng = *leng +1;
    if (newNum != (int)newNum) {
        newNum=[self getDigit:newNum length:leng];
    }
    return newNum;
}

@end
