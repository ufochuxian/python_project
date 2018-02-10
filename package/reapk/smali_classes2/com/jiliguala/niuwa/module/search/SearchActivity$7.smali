.class Lcom/jiliguala/niuwa/module/search/SearchActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

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
    .line 578
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 557
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 559
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 563
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 574
    :cond_0
    :goto_1
    return-void

    .line 561
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1300(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$7;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$700(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1500(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
