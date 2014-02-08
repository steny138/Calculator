//
//  STViewController.m
//  Calculator
//
//  Created by StenyMac on 2014/2/8.
//  Copyright (c) 2014年 Steny. All rights reserved.
//

#import "STViewController.h"

@interface STViewController (){
    STModal *modalNum;
}

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"log10(77) = %f , log10(777) = %f ,log10(8888) = %f",ceil(log10(77)),ceil(log10(777)),ceil(log10(10001)));
    modalNum = [[STModal alloc]init];
    for (UIButton * btn in [self.buttonsVIew subviews]) {
        [btn addTarget:self action:@selector(CalculatorClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showNumber:(double) num
{
    
    //self.txtResult.text = [NSString stringWithFormat:@"%f",num];
}

-(IBAction)numberClick:(id)sender
{
    
}
-(IBAction)plusClick:(id)sender
{
    
}
-(IBAction)minusClick:(id)sender
{
    
}
-(IBAction)multiClick:(id)sender
{
    
}
-(IBAction)divClick:(id)sender
{
    
}
-(IBAction)amountClick:(id)sender
{
    
}
-(IBAction)pointClick:(id)sender
{
    
}
-(IBAction)plusMinusClick:(id)sender
{
    
}
-(IBAction)clearClick:(id)sender
{
    
}
-(IBAction)modClick:(id)sender
{
    
}
-(IBAction)CalculatorClick:(id)sender
{
    UIControl *ctr = (UIControl *)sender;
    if (minBtnTag<=ctr.tag && ctr.tag< minBtnTag+10)
    {
        [modalNum clickNumber:ctr.tag - minBtnTag];
    }
    else
        [modalNum clickSymbol:ctr.tag];
    self.txtResult.text = [modalNum numberString];
}



@end
