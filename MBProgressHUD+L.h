//
//  MBProgressHUD+L.h
//  Pods
//
//  Created by darkedgeMBP on 15/12/23.
//
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (L)

/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 *  @param view    指定显示信息的view
 */
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

/**
 *  显示失败信息提示框
 *
 *  @param error 失败信息
 *  @param view  指定显示信息的view
 */
+ (void)showError:(NSString *)error toView:(UIView *)view;
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *  @param view    指定显示信息的view
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;
/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 */
+ (void)showSuccess:(NSString *)success;
/**
 *  显示失败信息提示框
 *
 *  @param error 失败信息
 */
+ (void)showError:(NSString *)error;
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message;
/**
 *  隐藏提示框
 *
 *  @param view 指定隐藏提示框的view
 */
+ (void)hideHUDForView:(UIView *)view;
/**
 *  隐藏提示框
 */
+ (void)hideHUD;
/**
 *  显示菊花+文字
 *
 *  @param text 文字
 */
+(void) showLoadingWithText:(NSString *)text;


/**
 未开发完成
 */
+(void) showUnDefineHUD;
@end
