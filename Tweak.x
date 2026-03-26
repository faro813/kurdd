#import <UIKit/UIKit.h>

%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application {
    %orig;

    // چاوەڕێکردنی ٥ چرکە بۆ ئەوەی شاشەکە بە تەواوی ئامادە بێت
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIWindow *window = nil;
        // ڕێگەی نوێ بۆ دۆزینەوەی پەنجەرەی سەرەکی لە iOS 13 بەرەو سەرەوە
        for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
            if (scene.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *w in scene.windows) {
                    if (w.isKeyWindow) {
                        window = w;
                        break;
                    }
                }
            }
        }

        if (window) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"KurdApp" 
                                                                           message:@"سڵاو شارۆ! یەکەم پڕۆژەی تۆ بە سەرکەوتوویی دروست کرا" 
                                                                    preferredStyle:UIAlertControllerStyleAlert];
            
            [alert addAction:[UIAlertAction actionWithTitle:@"باشە" style:UIAlertActionStyleDefault handler:nil]];
            
            [window.rootViewController presentViewController:alert animated:YES completion:nil];
        }
    });
}

%end
