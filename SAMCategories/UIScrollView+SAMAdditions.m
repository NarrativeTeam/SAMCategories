//
//  UIScrollView+SSToolkitAdditions.m
//  SAMCategories
//
//  Created by Sam Soffes on 4/12/10.
//  Copyright (c) 2010-2014 Sam Soffes. All rights reserved.
//

#import "UIScrollView+SAMAdditions.h"

@implementation UIScrollView (SAMAdditions)

- (void)sam_scrollToTop {
	[self sam_scrollToTopAnimated:NO];
}


- (void)sam_scrollToTopAnimated:(BOOL)animated {
	[self setContentOffset:CGPointMake(0.0f, 0.0f) animated:animated];
}

- (void)sam_scrollToBottom {
  [self sam_scrollToBottomAnimated:NO];
}

- (void)sam_scrollToBottomAnimated:(BOOL)animated {
  CGPoint bottomOffset = CGPointMake(0.0f, self.contentSize.height - self.bounds.size.height);
  [self setContentOffset:bottomOffset animated:animated];
}

@end
