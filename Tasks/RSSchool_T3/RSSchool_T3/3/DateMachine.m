#import "DateMachine.h"
#import "AppDelegate.h"
@interface DateMachine () <UITextFieldDelegate>
@end

@implementation DateMachine
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    NSDateFormatter *format = [NSDateFormatter new];
    format.dateFormat = @"dd/MM/yyyy HH:mm";
    NSDate *currentDate = [NSDate date];
    NSString *lab = [format stringFromDate:currentDate];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(130 , 100, 400, 400)];
    label.text = lab;
    label.tag = 1;
    [self.view addSubview:label];
    
    UIButton *add = [[UIButton alloc] initWithFrame:CGRectMake(210, 800, 200, 30)];
    [add setTitle:@"Add" forState: UIControlStateNormal];
    add.layer.backgroundColor = [UIColor brownColor].CGColor;
    [add addTarget:self action:@selector(adding:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview: add];
    
    UIButton *sub = [[UIButton alloc] initWithFrame:CGRectMake(0, 800, 200, 30)];
    [sub setTitle:@"Sub" forState: UIControlStateNormal];
    sub.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    [sub addTarget:self action:@selector(subing:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview: sub];

    UITextField *startDate = [[UITextField alloc] initWithFrame:CGRectMake(10, 400, 380, 30)];
    startDate.backgroundColor = [UIColor grayColor];
    startDate.placeholder = @"Start date";
    startDate.keyboardType = UIKeyboardTypeAlphabet;
    startDate.returnKeyType =  UIReturnKeyDone;
    [startDate addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    startDate.tag = 2;
    startDate.delegate = self;
    [self.view addSubview: startDate];
    UITextField *step = [[UITextField alloc] initWithFrame:CGRectMake(10, 450, 380, 30)];
    step.backgroundColor = [UIColor grayColor];
    step.placeholder = @"Step";
    step.tag = 3;
    step.delegate = self;
    [self.view addSubview: step];
    UITextField *dateUnit = [[UITextField alloc] initWithFrame:CGRectMake(10, 500, 380, 30)];
    dateUnit.backgroundColor = [UIColor grayColor];
    dateUnit.placeholder = @"Date unit";
    dateUnit.tag = 4;
    dateUnit.delegate = self;
    [self.view addSubview: dateUnit];
}
-(void)adding:(id)sender {
    UILabel *label = [self.view viewWithTag:1];
    UITextField *step = [self.view viewWithTag:3];
    UITextField *dateUnit = [self.view viewWithTag:4];
    NSInteger value1 = [step.text integerValue];
    NSDateFormatter *format = [NSDateFormatter new];
    format.dateFormat = @"dd/MM/yyyy HH:mm";
    NSDate *date = [format dateFromString: label.text];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    if([dateUnit.text isEqualToString: @"year"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitYear
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"day"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitDay
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"month"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitMonth
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"minute"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitMinute
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"hour"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitHour
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
}
-(void)subing:(id)sender {
    UILabel *label = [self.view viewWithTag:1];
    UITextField *step = [self.view viewWithTag:3];
    UITextField *dateUnit = [self.view viewWithTag:4];
    
    NSInteger value1 = -[step.text integerValue];
    NSDateFormatter *format = [NSDateFormatter new];
    format.dateFormat = @"dd/MM/yyyy HH:mm";
    NSDate *date = [format dateFromString: label.text];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    if([dateUnit.text isEqualToString: @"year"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitYear
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"day"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitDay
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"month"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitMonth
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"minute"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitMinute
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"hour"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitHour
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
    else if([dateUnit.text isEqualToString: @"week"]) {
        NSDate *dateNew = [calendar dateByAddingUnit:NSCalendarUnitWeekOfMonth
                                               value:value1
                                              toDate:date
                                             options:0];
        label.text = [format stringFromDate:dateNew];
    }
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    const char * _char = [string cStringUsingEncoding:NSUTF8StringEncoding];
    int backSpace = strcmp(_char, "\b");
    
    if (([@"0123456789" containsString: string] && textField.tag == 3 ) || backSpace == -8 ) {
        return YES;
    }
    if ( ([@"yearmonthdayhourminuteweek" containsString:string] && textField.tag == 4) ||  backSpace == -8 ) {
        return YES;
    }
    if (textField.tag == 2) {
        return YES;
    }
    return NO;
}
- (void)textFieldDidChange:(UITextField *)textField {
    UILabel *lab = [self.view viewWithTag: 1];
    
    if( textField.tag == 2) {
        lab.text = textField.text;
    }
}
@end
