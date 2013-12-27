DynamicLayer
============

UIKitDynamics &lt;UIDynamicItem>  working on a CALayer level, allowing both Auto Layout and UIKit Dynamics to coexist within the same
view hierarchy. 

Example :

	self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.mainView];
	DynamicLayer *backgroundItem = [DynamicLayer with:self.aView];
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:backgroundItem snapToPoint:self.background.center];
    backgroundItem.center = CGPointApplyAffineTransform(backgroundItem.center, CGAffineTransformMakeTranslation(0, -500));
    [self.animator addBehavior:snap];
