//
//  STModal.h
//  Calculator
//
//  Created by StenyMac on 2014/2/8.
//  Copyright (c) 2014年 Steny. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum Symbols{
    AmountSymbol = 20,
    PlusSymbol,
    MinusSymbol,
    MultiSymbol,
    DivSymbol,
    CLearSymbol,
    PlusMinusSymbol,
    ModSymbol,
    PointSymbol
}Symbols;

@interface STModal : NSObject
{
    double trueNum;
    double tempNum;
    Symbols currentSymbol;
    double  integer;
    double  fraction;
    int fracLength;
    BOOL isPoint;
    NSNumberFormatter *numFormatter;
}

@property (nonatomic, strong , readonly) NSString *numberString ;

-(void)clickSymbol:(Symbols)symbol;
-(void)clickNumber:(NSInteger)number;
@end
