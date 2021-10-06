//
//  MBProgressHUD+L.m
//  Pods
//
//  Created by darkedgeMBP on 15/12/23.
//
//

#import "MBProgressHUD+L.h"

@implementation MBProgressHUD (L)

#pragma mark 显示信息
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.label.text = text;
    hud.labelText=text;

    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    

//    // 隐藏时候从父控件中移除
//    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hide:YES afterDelay:1];
}

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

#pragma mark 显示成功信息
+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    return hud;
}

+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}
+(void)showLoadingWithText:(NSString *)text
{
//    LJLog(@"LLog %s",__func__);
    UIView *view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
//    MBProgressHUD *hud =
    [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.mode=MBProgressHUDModeIndeterminate
//    hud.labelText = text;
//
//    
//    //如果设置此属性则当前的view置于后台
//    
//    hud.dimBackground = YES;
//    
//    //设置对话框文字
//    
//    hud.labelText = @"请稍等";
    
    
}
+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
//    	MBProgressHUD *hud =
    [self HUDForView:view];
    [self hideAllHUDsForView:view animated:YES];
}

+ (void)hideHUD
{
//    LJLog(@"hiddenHUD");
    [self hideHUDForView:nil];
}

+(void) showUnDefineHUD
{
    [self showError:@"产品GG正在努力规划ing..."];
}
@end
