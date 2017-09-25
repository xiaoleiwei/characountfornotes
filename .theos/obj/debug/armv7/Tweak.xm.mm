#line 1 "Tweak.xm"
#import "CharacountForNotes8.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ICNoteEditorViewController; 
static void (*_logos_orig$_ungrouped$ICNoteEditorViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$ICNoteEditorViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$ICNoteEditorViewController$viewDidDisappear$)(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$ICNoteEditorViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$ICNoteEditorViewController$textViewDidChange$)(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, UITextView *); static void _logos_method$_ungrouped$ICNoteEditorViewController$textViewDidChange$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST, SEL, UITextView *); 

#line 3 "Tweak.xm"


static void _logos_method$_ungrouped$ICNoteEditorViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
	_logos_orig$_ungrouped$ICNoteEditorViewController$viewWillAppear$(self, _cmd, arg1);
	NSString *content = self.note.snippet;
	NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.snippet = contentLength;
}


static void _logos_method$_ungrouped$ICNoteEditorViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
	_logos_orig$_ungrouped$ICNoteEditorViewController$viewDidDisappear$(self, _cmd, arg1);
	self.snippet = nil;
}

static void _logos_method$_ungrouped$ICNoteEditorViewController$textViewDidChange$(_LOGOS_SELF_TYPE_NORMAL ICNoteEditorViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITextView * arg1) {
	_logos_orig$_ungrouped$ICNoteEditorViewController$textViewDidChange$(self, _cmd, arg1);
	NSString *content = self.textViewController.textView.text;
	NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.snippet = contentLength;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ICNoteEditorViewController = objc_getClass("ICNoteEditorViewController"); MSHookMessageEx(_logos_class$_ungrouped$ICNoteEditorViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$ICNoteEditorViewController$viewWillAppear$, (IMP*)&_logos_orig$_ungrouped$ICNoteEditorViewController$viewWillAppear$);MSHookMessageEx(_logos_class$_ungrouped$ICNoteEditorViewController, @selector(viewDidDisappear:), (IMP)&_logos_method$_ungrouped$ICNoteEditorViewController$viewDidDisappear$, (IMP*)&_logos_orig$_ungrouped$ICNoteEditorViewController$viewDidDisappear$);MSHookMessageEx(_logos_class$_ungrouped$ICNoteEditorViewController, @selector(textViewDidChange:), (IMP)&_logos_method$_ungrouped$ICNoteEditorViewController$textViewDidChange$, (IMP*)&_logos_orig$_ungrouped$ICNoteEditorViewController$textViewDidChange$);} }
#line 25 "Tweak.xm"
