# UIBarButtonItem-ItemBadge
Category of UIBarButtonItem class to add badge on it easily in Objective-C.

How to use:
- import UIBarButtonItem+ItemBadge.h and UIBarButtonItem+ItemBadge.m
- add #import "UIBarButtonItem+ItemBadge.h" in ViewController

<br />
Example:
<br />
    UIBarButtonItem *notificationItem = self.navigationItem.rightBarButtonItems[0];
    [notificationItem setCustomBadge:[NSString stringWithFormat:@"%d", 2]];

