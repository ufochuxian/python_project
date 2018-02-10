.class Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 8
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSearchKeyWord()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "searchKeyword":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getSearchFirstPos()I

    move-result v2

    .line 190
    .local v2, "searchFirstPos":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isScreenLandScape()Z

    move-result v1

    .line 191
    .local v1, "isLandScape":Z
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getLstSearchResult()Ljava/util/ArrayList;

    move-result-object v4

    .line 192
    .local v4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/search/model/SearchModel;

    invoke-direct {v6, v3, v2, v4}, Lcom/jiliguala/niuwa/module/search/model/SearchModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-static {v5, v6, v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->makeVideoSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;Z)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, v0, v6}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f010022

    const v7, 0x7f010014

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isLandScape":Z
    .end local v2    # "searchFirstPos":I
    .end local v3    # "searchKeyword":Ljava/lang/String;
    .end local v4    # "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;->a(Ljava/lang/Void;)V

    return-void
.end method
