//
//  XYZViewController.m
//  Choosy
//
//  Created by Siti Azreena on 9/11/14.
//  Copyright (c) 2014 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController()
//{
  //  UIImageView *imageView;
//}

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn1.frame = CGRectMake(50,50,160,240);
    [btn1 setTitle:@"Cycle the Images" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];

    
    [self.view addSubview:btn1];
    
 //  UIImageView *imageView = [[UIImageView alloc]init];
   // UIImage *animationImages = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"img1.jpg"],[UIImage imageNamed:@"img2.jpg"],[UIImage imageNamed:@"img3.jpg"],[UIImage imageNamed:@"img4.jpg"],nil];
    
   // UIImage *image1 = [UIImage imageNamed:@"img1.jpg"];
    // UIImage *image2 = [UIImage imageNamed:@"img2.jpg"];
     //UIImage *image3 = [UIImage imageNamed:@"img3.jpg"];
     //UIImage *image4 = [UIImage imageNamed:@"img4.jpg"];

    //    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
//       UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
//       UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
//       UIImageView *imageView4 = [[UIImageView alloc] initWithImage:image4];
//    imageView1.frame = CGRectMake(0,50,80,80);
//    imageView2.frame = CGRectMake(80,50,80,80);
//    imageView3.frame = CGRectMake(160,50,80,80);
//    imageView4.frame = CGRectMake(240,50,80,80);
    //[self.view addSubview:imageView1];
//     [self.view addSubview:imageView2];
//     [self.view addSubview:imageView3];
//     [self.view addSubview:imageView4];
    
    
   // NSArray *imageNames = @[@"img1.jpg",@"img2.jpg",@"img3.jpg",@"img4.jpg"];
    
  //  NSMutableArray *images = [[NSMutableArray alloc]init];
   // for(int i=0;i<imageNames.count;i++){
    //    [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]] ];
    //}
    
//    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(60,95,86,193)];
//    animationImageView.animationImages = images;
//    animationImageView.animationDuration = 1.0;
//    [self.view addSubview:animationImageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50,20,230,25)];
    label.text = @"Change an image";
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor whiteColor];
    
    [self.view addSubview:label];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)buttonClicked
{
    NSMutableArray *images = [[NSMutableArray alloc]init];
    NSArray *imageNames = @[@"img1.jpg",@"img2.jpg",@"img3.jpg",@"img4.jpg"];
  
   for(int i=0;i<imageNames.count;i++)
  
   {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
     // [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:1]]];
   // [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:2]]];
  // [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:3]]];
    }
    
   UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(130,50,80,80)];
    
    animationImageView.animationImages = images;
   
        animationImageView.animationDuration = 4.0;
    [self.view addSubview:animationImageView];
       [animationImageView startAnimating];
    
  //  [self performSelector:@selector(animationEnded) withObject:nil afterDelay:animationImageView.animationDuration];
    [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(animationDone:) userInfo:nil repeats:NO];

  
}
-(void) animationDone:(NSTimer*)inTimer
{
    [inTimer invalidate];
    inTimer = nil;
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(130,50,80,80)];
    
    [animationImageView stopAnimating];
    
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"No more images" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
       [alert show];
}
//}



//-(void) animationEnded
//{
//    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(130,50,80,80)];
//    //[animationImageView setAnimationRepeatCount:1];
//    
//   

//    
//    if([UIImage imageNamed:@"img4.jpg"])
//    {
//         [animationImageView stopAnimating];
//    }
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
