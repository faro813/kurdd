#import <UIKit/UIKit.h>

static void __attribute__((constructor)) initKurdApp() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"KurdAppStore"
                                                                       message:@"بۆ مۆد و بەرنامەی زیاتر سەردانی چەناڵ بکەن"
                                                                preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *joinAction = [UIAlertAction actionWithTitle:@"Join @kurdappstore"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/kurdappstore"] options:@{} completionHandler:nil];
        }];

        [alert addAction:joinAction];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}
