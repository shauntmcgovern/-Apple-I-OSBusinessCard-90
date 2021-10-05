//
//  ViewController.h
//  portInter
//
//  Hashbang! Games a example of Business Card display on iOS
//  Leads to the application being paid to complete by Apple & Co. called π
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *phWebView;
@property (weak, nonatomic) IBOutlet UIWebView *htWebView;
@property (weak, nonatomic) IBOutlet UIWebView *jaWebView;
@property (weak, nonatomic) IBOutlet UIWebView *gitWebView;
@property (weak, nonatomic) IBOutlet UIWebView *stackWebView;
@property (weak, nonatomic) IBOutlet UIImageView *resumeView;
@property (weak, nonatomic) IBOutlet UIImageView *frontBackground;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *jTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellPhoneLabel;
@property (weak, nonatomic) IBOutlet UITextField *fullNameFld;
@property (weak, nonatomic) IBOutlet UITextField *jobTitleFld;
@property (weak, nonatomic) IBOutlet UITextField *emailFld;
@property (weak, nonatomic) IBOutlet UITextField *cellPhoneFld;
@property (weak, nonatomic) IBOutlet UILabel *bottomTitleLabel;

@property (weak, nonatomic) IBOutlet UIImageView *backGrounds2;
@property (weak, nonatomic) IBOutlet UIImageView *backGrounds3;
@property (weak, nonatomic) IBOutlet UIButton *createBtn;
- (IBAction)createCard:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *pictureView;
@property (weak, nonatomic) IBOutlet UIImageView *backGrounds;
@property (weak, nonatomic) IBOutlet UITextView *jobTitleTxt2;
@property (weak, nonatomic) IBOutlet UITextView *jobNameTxt2;
@property (weak, nonatomic) IBOutlet UITextView *cPhoneTxt2;
@property (weak, nonatomic) IBOutlet UITextView *emailTxt2;
@property (weak, nonatomic) IBOutlet UITextView *emailTxt3;
@property (weak, nonatomic) IBOutlet UITextView *cPhoneTxt3;
@property (weak, nonatomic) IBOutlet UITextView *jobNameTxt3;
@property (weak, nonatomic) IBOutlet UITextView *jobTitleTxt3;

@property (weak, nonatomic) IBOutlet UITextView *emailTxt;
@property (weak, nonatomic) IBOutlet UITextView *cPhoneTxt;
@property (weak, nonatomic) IBOutlet UITextView *jobNameTxt;
@property (weak, nonatomic) IBOutlet UITextView *jobTitleTxt;

@end
