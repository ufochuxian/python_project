.class Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
