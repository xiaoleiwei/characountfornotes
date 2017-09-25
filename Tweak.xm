#import "CharacountForNotes8.h"

%hook ICNoteEditorViewController
- (void)viewWillAppear:(BOOL)arg1
{
	%orig;
	NSString *content = self.note.title;
	NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.title = contentLength;
}

- (void)viewDidDisappear:(BOOL)arg1
{
	%orig;
	self.title = nil;
}

- (void)textViewDidChange:(UITextView *)arg1 {
	%orig;
	NSString *content = self.textViewController.textView.text;
	NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.title = contentLength;
}
%end