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
    modalNum = [[STModal alloc]init];
    
    for (UIButton * btn in [self.buttonsVIew subviews]) {
        [btn addTarget:self action:@selector(CalculatorClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.layer.borderWidth =1 ;
        btn.layer.borderColor = [UIColor colorWithRed:155/255.0 green:205.0/255.0 blue:205.0/255.0 alpha:1.0].CGColor;
        //[btn setBackgroundColor:[UIColor colorWithRed:205/255.0 green:205.0/255.0 blue:205.0/255.0 alpha:1.0]];
        [btn setTintColor:[UIColor colorWithRed:0/255.0 green:114/255.0 blue:227/255.0 alpha:1.0]];
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
