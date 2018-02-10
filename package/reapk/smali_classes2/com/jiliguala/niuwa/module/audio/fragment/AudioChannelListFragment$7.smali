.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->initUI(Landroid/view/View;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 326
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSearchKeyWord()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "searchKeyword":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getSearchFirstPos()I

    move-result v1

    .line 329
    .local v1, "searchFirstPos":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->getLstSearchResult()Ljava/util/ArrayList;

    move-result-object v3

    .line 330
    .local v3, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/search/model/SearchModel;

    invoke-direct {v5, v2, v1, v3}, Lcom/jiliguala/niuwa/module/search/model/SearchModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->makeAudioSearchIntent(Landroid/content/Context;Lcom/jiliguala/niuwa/module/search/model/SearchModel;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0x1001

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f010022

    const v6, 0x7f010014

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 334
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "searchFirstPos":I
    .end local v2    # "searchKeyword":Ljava/lang/String;
    .end local v3    # "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;->a(Ljava/lang/Void;)V

    return-void
.end method
