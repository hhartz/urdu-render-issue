@import WebKit;

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *webContainer;
@property (strong, nonatomic) IBOutlet WKWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    WKWebViewConfiguration *webConfiguration = [[WKWebViewConfiguration alloc] init];

    self.webView = [[WKWebView alloc] initWithFrame:self.webContainer.bounds
                                            configuration:webConfiguration];
    self.webView.backgroundColor = [UIColor grayColor];
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.webView.translatesAutoresizingMaskIntoConstraints = YES;
    [self.webContainer addSubview:self.webView];

//    NSURL *url = [NSURL URLWithString:@"http://behdad.org/urdu/"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url
//                                             cachePolicy:NSURLRequestUseProtocolCachePolicy
//                                         timeoutInterval:0];
    NSURL *fileUrl = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html"];
    [self.webView loadFileURL:fileUrl allowingReadAccessToURL:fileUrl];
    //self.webView loadHTMLString:<#(nonnull NSString *)#> baseURL:<#(nullable NSURL *)#>
}


@end
