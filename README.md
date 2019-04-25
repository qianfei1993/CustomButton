# CustomButton
## 效果图:
![](https://raw.githubusercontent.com/qianfei1993/CustomButton/master/CustomButton/image.png)
## 介绍 
#### UIButton的一个扩展类，实现自定义按钮文字图片位置，倒计时按钮，不规则圆角边框等功能；
## 使用
#### 创建按钮控件，调用UIButton+Category.h相应方法即可实现相应功能，如下：
```
//倒计时按钮：
[sender startCountDownWithSeconds:10];
//倒计时按钮：
[sender startCountDownWithSeconds:10 completeBlock:^{
        [sender setTitle:@"complete" forState:UIControlStateNormal];
    }];
//圆角按钮
[_sixthStyleButton makeCornerRadius:10];
//圆角按钮带边框
[_fifthStyleButton makeCornerRadius:10 borderWidth:1 borderColor:[UIColor redColor]];
//不规则圆角按钮
[_fourthStyleButton makeCornerRadiusStyle:UIRectCornerTopRight|UIRectCornerBottomLeft radius:10 borderWidth:2.f borderColor:[UIColor redColor]];
//设置图片与文字位置
[_leftSyleButton buttonImageStyle:ButtonImageTitleStyleLeft space:10];
[_rightStyleButton buttonImageStyle:ButtonImageTitleStyleRight space:5];
[_topStyleButton buttonImageStyle:ButtonImageTitleStyleTop space:10];
[_bottomStyleButton buttonImageStyle:ButtonImageTitleStyleBottom space:10];
```
