.class Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
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
    .line 33
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->dismissAllowingStateLoss()V

    .line 51
    return-void

    .line 39
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    .local v2, "flr":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;->onJumpFlr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "flr":I
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;->onJumpFlr(I)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x7f090156
        :pswitch_0
    .end packed-switch
.end method
