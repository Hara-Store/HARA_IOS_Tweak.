#import <UIKit/UIKit.h>

__attribute__((constructor))
static void hara_init() {
    // Wait 3 seconds after game starts
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"HARA_IOS" 
                                    message:@"MODDED BY HARA_IOS\nFREE VERSION" 
                                    preferredStyle:UIAlertControllerStyleAlert];
        
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        
        // Show the alert on the screen
        UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
        [keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
