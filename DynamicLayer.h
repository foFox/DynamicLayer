@interface DynamicLayer : NSObject <UIDynamicItem>
@property (nonatomic, readwrite) CGPoint center;
@property (nonatomic, readonly) CGRect bounds;
@property (nonatomic, readwrite) CGAffineTransform transform;
@property (nonatomic, weak, readonly) UIView *layerOwner;
+(instancetype)with:(UIView *)view;
-(instancetype)initWithView:(UIView *)view;
@end