.class Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 133
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
