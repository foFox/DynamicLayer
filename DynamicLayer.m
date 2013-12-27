@implementation DynamicLayer

+(instancetype)with:(UIView *)view
{
    return [[DynamicLayer alloc] initWithView:view];
}

-(instancetype)initWithView:(UIView *)view
{
    self = [super init];
    if(self)
    {
        _layerOwner = view;
    }
    return self;
}

-(CGPoint)center
{
    return self.layerOwner.layer.position;
}

-(void)setCenter:(CGPoint)center
{
    self.layerOwner.layer.position = center;
}

-(CGRect)bounds
{
    return self.layerOwner.layer.bounds;
}

-(void)setBounds:(CGRect)bounds
{
    self.layerOwner.bounds = bounds;
}

-(CGAffineTransform)transform
{
    return CATransform3DGetAffineTransform(self.layerOwner.layer.transform);
}

-(void)setTransform:(CGAffineTransform)transform
{
    self.layerOwner.layer.transform = CATransform3DMakeAffineTransform(transform);
}

@end