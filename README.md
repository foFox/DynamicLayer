DynamicLayer
============

UIKit Dynamics &lt;UIDynamicItem> working on a CALayer level, allowing both Auto Layout and UIKit Dynamics to coexist within the same
view hierarchy. You can even apply dynamics to a view that is under direct control of Auto Layout.

Example :
	
	self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
	DynamicLayer *layerItem = [DynamicLayer with:self.someView];
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:layerItem snapToPoint:self.someView.center];
    layerItem.center = CGPointApplyAffineTransform(layerItem.center, CGAffineTransformMakeTranslation(0, -500));
    [self.animator addBehavior:snap];
