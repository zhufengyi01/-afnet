//
//  ViewController.m
//  测试使用afnet
//
//  Created by 朱封毅 on 25/02/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>
#import <AddressBookUI/ABPeoplePickerNavigationController.h>
#import <AddressBook/ABPerson.h>
#import <AddressBookUI/ABNewPersonViewController.h>
#import <WebKit/WebKit.h>
#import "UIWebView+AFNetworking.h"
#import "UIImage+GIF.h"
#import "THActivityView.h"
#import "THPageControl.h"
#import "Dog.h"
#import "MJExtension.h"
#import "NJKWebViewProgress.h"
#import "SVPullToRefresh.h"
#import "UIWebView+AFNetworking.h"
#import "NJKWebViewProgressView.h"
@interface ViewController ()<ABPeoplePickerNavigationControllerDelegate,THActivityViewDelegate,UITableViewDelegate,UITableViewDataSource,WKNavigationDelegate,WKUIDelegate>

{
    
//    UIWebView *webview;
    
    UIImageView *panImageView;
    
    UITableView *_tableView;
    
    WKWebView  *_wkWebView;
    
    NJKWebViewProgressView *progressView;
}

@property(nonatomic,strong) AVPlayerViewController *avPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Dog *D = [Dog new];
    D.name = @"dog1";
    D.age  = @"1";
    
    Dog *D1 = [Dog new];
    D1.name = @"dog2";
    D1.age  = @"1";
    
    NSArray *Arr = @[D,D1];
    
    WKWebViewConfiguration *config  = [WKWebViewConfiguration new];

    
    _wkWebView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:config];
    
//    _wkWebView.UIDelegate = self;
//    _wkWebView.navigationDelegate = self;
    [_wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com/"]]];
    
    [self.view addSubview:_wkWebView];
    
    
    [_wkWebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];

    
    
    
    // 执行JS代码
//    [_wkWebView evaluateJavaScript:@"" completionHandler:^(id _Nullable, NSError * _Nullable error) {
    
//    }];
    
    
    
//    NSString *file = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/bag.data"];

//    BOOL *b =  [NSKeyedArchiver archiveRootObject:Arr toFile:file];
    
    
//    NSArray *Ar = [NSKeyedUnarchiver unarchiveObjectWithFile:file];
    
//    NSString  *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    
//    self.imageView.image = [UIImage sd_animatedGIFNamed:@"效果"];
    
    self.view.backgroundColor = [UIColor yellowColor];
    //测试国际化app
//    self.lbltest.text = NSLocalizedString(@"play",@"播放");
    
//    self.navigationController.hidesBarsOnSwipe = YES;
//    self.navigationController.hidesBarsWhenKeyboardAppears= YES;
//    webview =  [[UIWebView alloc] initWithFrame:self.view.bounds];
//    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com/"]]];
    
    
//    NJKWebViewProgress  *_progressProxy = [[NJKWebViewProgress alloc] init]; // instance variable
//    webview.delegate = _progressProxy;
//    _progressProxy.webViewProxyDelegate = self;
//    _progressProxy.progressDelegate = self;
    
//    [self.view addSubview:webview];
 /*
    THPageControl *page =  [[THPageControl alloc] init];
    page.frame = CGRectMake(100, 100, 100, 100);
    page.currentPageIndicatorTintColor = [UIColor redColor];
    page.pageIndicatorTintColor = [UIColor blueColor];
    page.numberOfPages = 5;
    NSLog(@"====%ld",(long)page.subviews.count);
    for (UIView *view  in  page.subviews) {
        view.layer.borderColor = [UIColor whiteColor].CGColor;
        view.layer.borderWidth = 1;
    }
*/
//    [self.view addSubview:page];
    
//    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//    self.imageView.image = [UIImage sd_animatedGIFNamed:@"效果"];
//    [self.view addSubview:self.imageView];
    
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"js"];
//    NSString *jsString = [[NSString alloc] initWithContentsOfFile:filePath];
//    [webview stringByEvaluatingJavaScriptFromString:jsString];
    
//    ABPeoplePickerNavigationController   *piker = [[ABPeoplePickerNavigationController  alloc] init];
//    piker.peoplePickerDelegate = self;
//     piker.predicateForSelectionOfPerson = [NSPredicate predicateWithValue:false];
//    [self presentViewController:piker animated:YES completion:nil];
    /*
    
    panImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 60, 60)];
    panImageView.backgroundColor = [UIColor redColor];
    panImageView.clipsToBounds = YES;
    panImageView.layer.cornerRadius = 30;
    panImageView.userInteractionEnabled = YES;
//     UIView *view =   [[UIApplication sharedApplication].delegate window].rootViewController.view;
    [self.navigationController.view addSubview:panImageView];
    
    
    UIPanGestureRecognizer  *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panaction:)];
    [panImageView addGestureRecognizer:pan];*/
    
//    [[THActivityView sharedManager] showInView:self.navigationController.view delegate:self];

    
    

    
    //测试使用归档mj
    
    //测试
    //test 2
    
    [_tableView description];
    
    _tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _tableView.delegate = self;
    _tableView.dataSource =  self;
 /*   [_tableView addPullToRefreshWithActionHandler:^{
    
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [_tableView.pullToRefreshView stopAnimating];
        });
    } position:SVPullToRefreshPositionTop];
*/
//    _tableView.contentInset = UIEdgeInsetsMake(100, 0, 0,0);

//    _tableView.contentOffset = CGPointMake(400, 400);
    
   /* [_tableView addInfiniteScrollingWithActionHandler:^{
    
        
    }];*/
    
//    UIPageViewController
    
//    [UIImage imageNamed:@"angle-mask@3x"];
    
//    [UIColor colorWithRed:0.1 green:0.4 blue:0.3 alpha:1];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    
        //[_tableView setContentOffset:CGPointMake(0, 200) animated:YES];

//    });
    
    
/*    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"哈哈哈" message:@"喝喝"preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *Ac = [UIAlertAction actionWithTitle:@"么么" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    vc.view.backgroundColor = [UIColor redColor];
    
    UIAlertAction *Ac2 = [UIAlertAction actionWithTitle:@"么么" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }];

    [vc  addAction:Ac];
    
    [vc addAction:Ac2];
    
    [self presentViewController:vc animated:YES completion:nil];
                             
    
*/
    _tableView.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:_tableView];
    
    progressView = [[NJKWebViewProgressView alloc] initWithFrame:CGRectMake(0,44,self.navigationController.view.frame.size.width
                                                                            , 2)];
    [self.navigationController.navigationBar addSubview:progressView];
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
 
    if ([keyPath isEqualToString:@"estimatedProgress"] ) {
    
        NSString *key1 = [change objectForKey:@"kind"];
        
        NSString *key2 = [change objectForKey:@"new"];
        
        NSLog(@"key1 ==%@  key2 ==%@" , key1,key2);
        [progressView setProgress:[key2 doubleValue] animated:YES];
    }
    
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 /*   static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell) {
        cell=  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = @"哈哈";
*/
    return [UITableViewCell new];
}


-(void)panaction:(UIPanGestureRecognizer*)pan
{
    
    
    CGPoint  ponit =  [pan locationInView:self.navigationController.view];
    
    NSLog(@"=====ponit = %@",[NSValue valueWithCGPoint:ponit]);
    
    double screenW = [UIScreen mainScreen].bounds.size.width;
    double screenH = [UIScreen mainScreen].bounds.size.height;
    double x = ponit.x;
    double y = ponit.y;
    
    
    if (x <panImageView.frame.size.width/2) {
        x = panImageView.frame.size.width/2;
    }
    if (x > screenW - panImageView.frame.size.width/2 ) {
        x = screenW - panImageView.frame.size.width/2;
    }
    
    if (y< panImageView.frame.size.height/2) {
        y = panImageView.frame.size.height/2;
    }
    if (y>screenH - panImageView.frame.size.height/2) {
        y = screenH - panImageView.frame.size.height/2;
    }
    panImageView.center = CGPointMake(x, y);
}

-(void)THActivityViewDelegateTap
{
    
}
/*
#pragma mark Delegate
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return  YES;
}

#pragma mark webview 一旦开始请求webview 就会调用
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    //
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"document.location.href"];
//     NSString *title = [webview stringByEvaluatingJavaScriptFromString:@"document.title"];
    
//    self.title = title;
}

- (void)webViewProgress:(NJKWebViewProgress *)webViewProgress updateProgress:(float)progress;
{
    
}*/
//-(void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker
//{
//    
//}


#pragma mark  WKNavigationDelegate
/**
 *  // 决定导航的动作，通常用于处理跨域的链接能否导航。WebKit对跨域进行了安全检查限制，不允许跨域，因此我们要对不能跨域的链接
 *
 */

-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    
}

// 决定是否接收响应
// 这个是决定是否接收response
// 要获取response，通过WKNavigationResponse对象获取
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler
{
 
    
}

// 当main frame的导航开始请求时，会调用此方法
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation
{
    
}

// 当main frame接收到服务重定向时，会回调此方法
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation
{
    
}

//当main frame开始加载数据失败时，会回调
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error
{
    
}

//当main frame的web内容开始到达时，会回调
- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation
{
    
    
}

//当main frame导航完成时，会回调
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation
{
    
}
// 当main frame最后下载数据失败时，会回调
- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error
{
    
}


// 这与用于授权验证的API，与AFN、UIWebView的授权验证API是一样的
- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *__nullable credential))completionHandler
{
    
}

//// 当web content处理完成时，会回调
- (void)webViewWebContentProcessDidTerminate:(WKWebView *)webView
{
    
}



// 创建新的webview
// 可以指定配置对象、导航动作对象、window特性
- (nullable WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures
{
    return _wkWebView;
}

// webview关闭时回调
- (void)webViewDidClose:(WKWebView *)webView
{
    
}

// 调用JS的alert()方法
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
    
}

// 调用JS的confirm()方法
- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler
{
    
}

// 调用JS的prompt()方法
- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(nullable NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * __nullable result))completionHandler
{
    
}


@end
