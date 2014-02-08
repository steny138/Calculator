//
//  STViewController.h
//  Calculator
//
//  Created by StenyMac on 2014/2/8.
//  Copyright (c) 2014年 Steny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STModal.h"
#define minBtnTag 10

@interface STViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *txtResult;
@property (weak, nonatomic) IBOutlet UIButton *btnZero;
@property (weak, nonatomic) IBOutlet UIButton *btnOne;
@property (weak, nonatomic) IBOutlet UIButton *btnTwo;
@property (weak, nonatomic) IBOutlet UIButton *btnThree;
@property (weak, nonatomic) IBOutlet UIButton *btnFour;
@property (weak, nonatomic) IBOutlet UIButton *btnFive;
@property (weak, nonatomic) IBOutlet UIButton *btnSix;
@property (weak, nonatomic) IBOutlet UIButton *btnSeven;
@property (weak, nonatomic) IBOutlet UIButton *btnEight;
@property (weak, nonatomic) IBOutlet UIButton *btnNine;
@property (weak, nonatomic) IBOutlet UIButton *btnPoint;
@property (weak, nonatomic) IBOutlet UIButton *btnAmount;
@property (weak, nonatomic) IBOutlet UIButton *btnClear;
@property (weak, nonatomic) IBOutlet UIButton *btnMod;
@property (weak, nonatomic) IBOutlet UIButton *btnPlus;
@property (weak, nonatomic) IBOutlet UIButton *btnMinus;
@property (weak, nonatomic) IBOutlet UIButton *btnMulti;
@property (weak, nonatomic) IBOutlet UIButton *btnDiv;
@property (weak, nonatomic) IBOutlet UIButton *btnPlusMinus;
@property (weak, nonatomic) IBOutlet UIView *buttonsVIew;

-(IBAction)numberClick:(id)sender;
-(IBAction)plusClick:(id)sender;
-(IBAction)minusClick:(id)sender;
-(IBAction)multiClick:(id)sender;
-(IBAction)divClick:(id)sender;
-(IBAction)amountClick:(id)sender;
-(IBAction)pointClick:(id)sender;
-(IBAction)plusMinusClick:(id)sender;
-(IBAction)clearClick:(id)sender;
-(IBAction)modClick:(id)sender;

-(IBAction)CalculatorClick:(id)sender;

@end
