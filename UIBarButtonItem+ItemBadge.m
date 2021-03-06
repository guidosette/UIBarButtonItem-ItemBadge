//
//  UIBarButtonItem+ItemBadge.m
//  Fanfa
//
//  Created by Guido Fanfani on 23/09/17.
//  Copyright © 2017 Fanfa. All rights reserved.
//

#import "UIBarButtonItem+ItemBadge.h"

@implementation UIBarButtonItem (ItemBadge)

- (void) setCustomBadge:(NSString*)text {

    //restore image
    UIImage* image = self.image;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [v addSubview:imageView];

    //create custom badge
    if (text!=nil && ![text isEqualToString:@"0"]) {
        float size = imageView.frame.size.height/2;
        float padding = 5;
        UILabel *badge = [[UILabel alloc] initWithFrame:CGRectMake(-7, -7, size + padding, size + padding)];
        badge.backgroundColor = [UIColor redColor];
        badge.layer.cornerRadius = (size+padding)/2;
        badge.layer.masksToBounds = YES;
        badge.userInteractionEnabled = NO;
        badge.font = [UIFont systemFontOfSize:12 weight:UIFontWeightBold];
        badge.textColor = [UIColor whiteColor];
        badge.textAlignment = NSTextAlignmentCenter;
        badge.text = text;

        //restore tap
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self.target action:self.action];
        tap.numberOfTapsRequired = 1;
        [v addGestureRecognizer:tap];

        [v addSubview:badge];
    }

    [self setCustomView:v];
}


@end
