//
//  UITextView+PlaceHolder.h
//  JHKeyboardInputView
//
//  Created by 307A on 16/10/2.
//  Copyright © 2016年 徐嘉宏. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^SizeDidChangeBlock)(CGSize size);
typedef void(^TextDidChangeBlock)();

@interface UITextView_PlaceHolder : UITextView
@property (nonatomic) NSString *placeholder;
@property (nonatomic) CGFloat maxHeight;

- (instancetype)init;
- (instancetype)initWithFrame:(CGRect)frame PlaceHolder:(NSString *)placeHolder;
- (void)sizeDidChange:(SizeDidChangeBlock)sizeDidChangeBlock;
- (void)textDidChange:(TextDidChangeBlock)textDidChangeBlock;
@end
