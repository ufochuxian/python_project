.class Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->dismissAllowingStateLoss()V

    .line 53
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;->onSortNew()V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;->onSortOld()V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;->onOnlyShowRoot()V

    goto :goto_0

    .line 46
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;

    move-result-object v0

    .line 47
    .local v0, "dlg":Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->setListener(Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;)V

    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->setTotalFlr(I)V

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumJumpFlrDlg;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x7f090507
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
