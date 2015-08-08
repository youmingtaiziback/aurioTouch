/*
 
     File: EAGLView.h
 Abstract: This class wraps the CAEAGLLayer from CoreAnimation into a convenient UIView subclass
  Version: 2.0
 
 */

// Framework includes
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import "AudioController.h"

@interface EAGLView : UIView
@property (assign)  BOOL applicationResignedActive;

- (void)startAnimation;
- (void)stopAnimation;
@end
