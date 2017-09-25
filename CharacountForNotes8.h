@interface ICNote: NSObject
@property (readonly,nonatomic) NSString *title;
@end


@interface ICTextView: UIView
@property (copy,nonatomic) NSString *text;
@end

@interface ICTextViewController:UIViewController
@property (retain,nonatomic) ICTextView *textView;
@end

@interface ICNoteEditorViewController:UIViewController
@property (retain,nonatomic) ICTextViewController *textViewController;
@property (retain,nonatomic) ICNote *note;
@end