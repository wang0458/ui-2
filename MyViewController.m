//
//  MyViewController.m
//  ui-2
//
//  Created by Ibokan on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize rootView,rootView2,rootView3;
@synthesize rootView4;
-(void)viewDidLoad
{
    [super viewDidLoad];
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 280, 320)];
    view1.backgroundColor=[UIColor redColor];
    self.rootView=view1;
    [self.view addSubview:view1 ];
    [view1 release];

    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 240, 280)];
    view2.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    view2.backgroundColor=[UIColor greenColor];
    self.rootView2=view2;
    [view1 addSubview:view2 ];
    [view2 release];

    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 240)];
     view3.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;//使其随着view1自动调整大小，长宽
    view3.backgroundColor=[UIColor yellowColor];
    self.rootView3=view3;
    [view2 addSubview:view3 ];
    [view3 release];
    
  
    
    UIButton *but1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    but1.frame=CGRectMake(20, 340, 80, 40);
    [but1 setTitle:@"缩小" forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(zoomOut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1 ];
    
    
    UIButton *but2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    but2.frame=CGRectMake(220, 340, 80, 40);
    [but2 setTitle:@"放大" forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(zoomLn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but2 ];
    
    UIImageView*view4=[[[UIImageView alloc]initWithFrame:[self.rootView3 bounds]]autorelease];    
    view4.image=[UIImage imageNamed:@"op11_x101_00.png"];
    view4.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.rootView4=view4;
    [view3 addSubview:view4];
    [view4 release];

    
       
    } 
-(void)zoomOut
    {
    
        
        [self.rootView setFrame:CGRectInset(self.rootView.frame, -10, -10) ];
        
    
    
    }
    
    
-(void)zoomLn
{


    [self.rootView setFrame:CGRectInset(self.rootView.frame, +10, +10)]; 

}
    
 -(void)changeColor
{
    UIColor *a=[[UIColor alloc]init];
    
    a=self.rootView.backgroundColor;
    self.rootView.backgroundColor=self.rootView2.backgroundColor;
    self.rootView2.backgroundColor=self.rootView3.backgroundColor;
    self.rootView3.backgroundColor=a;





}
    
    
    
    

    
    
    
    
    
    

@end
