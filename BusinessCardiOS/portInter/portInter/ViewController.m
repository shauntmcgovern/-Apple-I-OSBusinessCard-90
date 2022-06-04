//
//  ViewController.m
//  portInter
//
//  Hashbang! Games a example of Business Card display on iOS
//  Leads to the application being paid to complete by Apple & Co. called π
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSString* jobName;
NSString* jobTitle;
NSString* cP;
NSString* eM;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *fullURL = @"http://cs.neiu.edu/~fsef141g5/final_mcgovern_project/project/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_phWebView loadRequest:requestObj];
    
    NSString *fullURL2 = @"https://www.linkedin.com/in/shaun-mcgovern-oophtml5css3jquery2/";
    NSURL *url2 = [NSURL URLWithString:fullURL2];
    NSURLRequest *requestObj2 = [NSURLRequest requestWithURL:url2];
    [_jaWebView loadRequest:requestObj2];
    
    NSString *fullURL3 = @"http://cs.neiu.edu/~smcgover/project_02/";
    NSURL *url3 = [NSURL URLWithString:fullURL3];
    NSURLRequest *requestObj3 = [NSURLRequest requestWithURL:url3];
    [_htWebView loadRequest:requestObj3];
    
    NSString *fullURL4 = @"http://stackoverflow.com/users/2403313/s-mcgovern";
    NSURL *url4 = [NSURL URLWithString:fullURL4];
    NSURLRequest *requestObj4 = [NSURLRequest requestWithURL:url4];
    [_stackWebView loadRequest:requestObj4];
    
    NSString *fullURL5 = @"https://github.com/shauntmcgovern";
    NSURL *url5 = [NSURL URLWithString:fullURL5];
    NSURLRequest *requestObj5 = [NSURLRequest requestWithURL:url5];
    [_gitWebView loadRequest:requestObj5];
    
    _fullNameFld.delegate = self;
    _jobTitleFld.delegate = self;
    _emailFld.delegate = self;
    _cellPhoneFld.delegate = self;
    
    
    _emailTxt.text = eM;
    self.cPhoneTxt.text = cP;
    _jobNameTxt.text = jobName;
    self.jobTitleTxt.text = jobTitle;
    _emailTxt2.text = eM;
    self.cPhoneTxt2.text = cP;
    _jobNameTxt2.text = jobName;
    self.jobTitleTxt2.text = jobTitle;
    _emailTxt3.text = eM;
    self.cPhoneTxt3.text = cP;
    _jobNameTxt3.text = jobName;
    self.jobTitleTxt3.text = jobTitle;
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"image3" ofType:@"png"];
    UIImage *im = [[UIImage alloc] initWithContentsOfFile:filePath];
    self.backGrounds.image = im;
    _backGrounds2.image = im;
    self.backGrounds3.image = im;
    
    NSString *filePath2 = [[NSBundle mainBundle] pathForResource:@"resume" ofType:@"jpg"];
    UIImage *im2 = [[UIImage alloc] initWithContentsOfFile:filePath2];
    self.resumeView.image = im2;
    
    NSString *filePath3 = [[NSBundle mainBundle] pathForResource:@"front" ofType:@"png"];
    UIImage *im3 = [[UIImage alloc] initWithContentsOfFile:filePath3];
    self.frontBackground.image = im3;
    
    UIGraphicsBeginImageContext(_pictureView.bounds.size);[_pictureView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    
}

- (IBAction)createCard:(id)sender {
    jobName = self.fullNameFld.text;
    jobTitle = self.jobTitleFld.text;
    cP = self.cellPhoneFld.text;
    eM = self.emailFld.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
