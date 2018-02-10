.class Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 309
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 311
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 315
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 319
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$300(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
