//
//  ViewController.m
//  CustomButton
//
//  Created by damai on 2018/10/25.
//  Copyright © 2018年 personal. All rights reserved.
//
//  注意： xib,storyboard调用不规则圆角按钮方式时需要在viewDidLayoutSubviews中调用
//


#import "ViewController.h"
#import "UIButton+Category.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *leftSyleButton;
@property (weak, nonatomic) IBOutlet UIButton *rightStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *topStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomStyleButton;

@property (weak, nonatomic) IBOutlet UIButton *countDownButton;
@property (weak, nonatomic) IBOutlet UIButton *secondCountDownButton;

@property (weak, nonatomic) IBOutlet UIButton *firstStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *secondStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *fourthStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *fifthStyleButton;
@property (weak, nonatomic) IBOutlet UIButton *sixthStyleButton;
@end

@implementation ViewController

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    //styleButton
    [_firstStyleButton makeCornerRadiusStyle:UIRectCornerTopLeft|UIRectCornerTopRight radius:10 borderWidth:2.f borderColor:[UIColor redColor]];
    [_secondStyleButton makeCornerRadiusStyle:UIRectCornerBottomLeft|UIRectCornerBottomRight radius:5.f borderWidth:2.f borderColor:[UIColor redColor]];
    [_thirdStyleButton makeCornerRadiusStyle:UIRectCornerTopLeft|UIRectCornerBottomRight radius:10 borderWidth:2.f borderColor:[UIColor redColor]];
    [_fourthStyleButton makeCornerRadiusStyle:UIRectCornerTopRight|UIRectCornerBottomLeft radius:10 borderWidth:2.f borderColor:[UIColor redColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //buttonImageStyle
    [_leftSyleButton buttonImageStyle:ButtonImageTitleStyleLeft space:10];
    [_rightStyleButton buttonImageStyle:ButtonImageTitleStyleRight space:5];
    [_topStyleButton buttonImageStyle:ButtonImageTitleStyleTop space:10];
    [_bottomStyleButton buttonImageStyle:ButtonImageTitleStyleBottom space:10];
    //countDownButton
    
    [_fifthStyleButton makeCornerRadius:10 borderWidth:1 borderColor:[UIColor redColor]];
    [_sixthStyleButton makeCornerRadius:10];
   
}

- (IBAction)startTimeAction:(UIButton *)sender {
    [sender startCountDownWithSeconds:10];
}
- (IBAction)secondAction:(UIButton *)sender {
    [sender startCountDownWithSeconds:10 completeBlock:^{
        [sender setTitle:@"complete" forState:UIControlStateNormal];
    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
