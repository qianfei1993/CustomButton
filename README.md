# CustomButton
### 注意：xib,storyboard调用不规则圆角按钮时需要在viewDidLayoutSubviews中调用
### 效果图
### 调用方法：
```
倒计时按钮1：
[sender startCountDownWithSeconds:10];
倒计时按钮1：
[sender startCountDownWithSeconds:10 completeBlock:^{
        [sender setTitle:@"complete" forState:UIControlStateNormal];
    }];
圆角按钮
[_sixthStyleButton makeCornerRadius:10];
圆角按钮带边框
[_fifthStyleButton makeCornerRadius:10 borderWidth:1 borderColor:[UIColor redColor]];
不规则圆角按钮
[_fourthStyleButton makeCornerRadiusStyle:UIRectCornerTopRight|UIRectCornerBottomLeft radius:10 borderWidth:2.f borderColor:[UIColor redColor]];
设置图片与文字样式
[_leftSyleButton buttonImageStyle:ButtonImageTitleStyleLeft space:10];
[_rightStyleButton buttonImageStyle:ButtonImageTitleStyleRight space:5];
[_topStyleButton buttonImageStyle:ButtonImageTitleStyleTop space:10];
[_bottomStyleButton buttonImageStyle:ButtonImageTitleStyleBottom space:10];
```
