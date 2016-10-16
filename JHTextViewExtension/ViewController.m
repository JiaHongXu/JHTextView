//
//  ViewController.m
//  JHTextViewExtension
//
//  Created by 307A on 2016/10/16.
//  Copyright © 2016年 徐嘉宏. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+PlaceHolder.h"

@interface ViewController ()
@property (strong, nonatomic) UITextView_PlaceHolder *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _textView = [[UITextView_PlaceHolder alloc] initWithFrame:CGRectMake(0, 64, 300, 50) PlaceHolder:@""];
    _textView.backgroundColor = [UIColor yellowColor];
    [_textView sizeDidChange:^(CGSize size) {
        CGRect newFrame = _textView.frame;
        newFrame.size = size;
        _textView.frame = newFrame;
    }];
    [_textView textDidChange:^{
        NSLog(@"%ld", [_textView.text length]);
    }];
    
    _textView.placeholder = @"placeholder";
    _textView.maxHeight = 120;
    
    [self.view addSubview:_textView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
