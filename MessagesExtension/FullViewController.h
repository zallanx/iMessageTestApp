//
//  FullViewController.h
//  iMessage App Test
//
//  Created by Allan Zhang on 9/17/16.
//  Copyright © 2016 Allan Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FinishedProcessDelegate;

@interface FullViewController : UIViewController

@property (weak) id<FinishedProcessDelegate> delegate;


@end

@protocol FinishedProcessDelegate <NSObject>

- (void)didClickOnFinish;

@end
