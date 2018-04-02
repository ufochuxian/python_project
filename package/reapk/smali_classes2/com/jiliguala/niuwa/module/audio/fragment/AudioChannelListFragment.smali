.class public Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
.super Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;
.source "SourceFile"


# static fields
.field private static final DISMISS_DIALOG:I = 0x1000

.field private static final FAV_LIST_INDEX:I = 0x1

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final OFFLINE_LIST_INDEX:I = 0x2

.field private static final RECENT_PLAY_LIST_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackBtn:Landroid/view/View;

.field private mChannel:Ljava/lang/String;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mLevel:I

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 63
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->doChannelSelection(I)V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 143
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    .line 144
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 160
    return-void
.end method

.method private doChannelSelection(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    .line 379
    .local v9, "channelItem":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Name"

    iget-object v1, v9, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Station Select"

    invoke-virtual {v0, v1, v10}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v12

    .line 442
    .local v12, "transaction":Landroid/support/v4/app/an;
    const v0, 0x7f010024

    const v1, 0x7f010027

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/an;->a(II)Landroid/support/v4/app/an;

    .line 443
    invoke-virtual {v12, p0}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 444
    invoke-virtual {v12}, Landroid/support/v4/app/an;->i()I

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    iget-object v1, v9, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, v9, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    new-instance v1, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    iget-object v2, v9, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    .line 453
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "transaction":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    move-result-object v7

    .line 384
    .local v7, "audioRntPListFragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 391
    :goto_1
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v7, v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->onHiddenChanged(Z)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->refreshUI(Landroid/os/Bundle;)V

    goto :goto_1

    .line 397
    .end local v7    # "audioRntPListFragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->showLoginPage()V

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->showAddBabyPage()V

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    move-result-object v6

    .line 404
    .local v6, "audioFavListFragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 406
    .restart local v8    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_4

    .line 407
    invoke-virtual {v6, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 411
    :goto_2
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v6, v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->onHiddenChanged(Z)V

    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {v6, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;->refreshUI(Landroid/os/Bundle;)V

    goto :goto_2

    .line 420
    .end local v6    # "audioFavListFragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    move-result-object v11

    .line 421
    .local v11, "offLineListFragment":Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 423
    .restart local v8    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v11}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_5

    .line 424
    invoke-virtual {v11, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 428
    :goto_3
    const-class v0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v11, v4}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->onHiddenChanged(Z)V

    goto/16 :goto_0

    .line 426
    :cond_5
    invoke-virtual {v11, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->refreshUI(Landroid/os/Bundle;)V

    goto :goto_3

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 103
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .line 104
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;-><init>()V

    .line 107
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
    :cond_0
    return-object v0
.end method

.method private generateAudioFavList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .locals 3

    .prologue
    .line 506
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;-><init>()V

    .line 507
    .local v0, "audioFavDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    const-string v1, "1000"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 508
    const-string v1, "2131230821"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    .line 509
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    .line 510
    return-object v0
.end method

.method private generateOfflineList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .locals 3

    .prologue
    .line 514
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;-><init>()V

    .line 515
    .local v0, "offlineDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    const-string v1, "-1"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 516
    const-string v1, "2131230822"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    .line 517
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    .line 518
    return-object v0
.end method

.method private generateRntPlayList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .locals 3

    .prologue
    .line 498
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;-><init>()V

    .line 499
    .local v0, "audioFavDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    const-string v1, "-2"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 500
    const-string v1, "2131230824"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    .line 501
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    .line 502
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 321
    const v0, 0x7f090499

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$7;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 336
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mBackBtn:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mBackBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mGridView:Landroid/widget/GridView;

    .line 342
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 375
    return-void
.end method

.method private reGenerateData()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->generateRntPlayList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->generateAudioFavList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->generateOfflineList()Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 472
    return-void
.end method

.method private refreshUI()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->updateElement(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$5;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$6;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 306
    return-void
.end method

.method private showOfflineAlertDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 222
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    if-nez v5, :cond_1

    .line 223
    new-instance v5, Landroid/app/Dialog;

    const v6, 0x7f1000b4

    invoke-direct {v5, v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    .line 230
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 231
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b014f

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 234
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x5

    .line 235
    .local v4, "width":I
    const/4 v1, -0x2

    .line 236
    .local v1, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/Window;->setLayout(II)V

    .line 237
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 238
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 240
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 245
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    return-void

    .line 225
    .end local v1    # "height":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 241
    .restart local v1    # "height":I
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "width":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 457
    .local v0, "transaction":Landroid/support/v4/app/an;
    const v1, 0x7f01001f

    const v2, 0x7f010014

    const v3, 0x7f010013

    const v4, 0x7f010020

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 458
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const v1, 0x7f0904a9

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 460
    invoke-virtual {v0, p2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 461
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentRadioIndex()I
    .locals 4

    .prologue
    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "currentRadioName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    .line 209
    .local v1, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "currentRadioName":Ljava/lang/String;
    .end local v1    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 217
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onAttach(Landroid/app/Activity;)V

    .line 165
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->addEventObserver()V

    .line 114
    const-string v2, "0"

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->reGenerateData()V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const-string v2, "channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    .line 119
    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mIndex:I

    .line 120
    const-string v2, "channel_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    if-eqz v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    .end local v1    # "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->onHiddenChanged(Z)V

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 270
    const v1, 0x7f0b00aa

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->initUI(Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->setListener()V

    .line 274
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->refreshUI()V

    .line 275
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onHiddenChanged(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .line 133
    .local v0, "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->resumePlay()V

    .line 139
    .end local v0    # "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->pausePlay()V

    goto :goto_0
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->showAddBabyPage()V

    .line 539
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 494
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onPause()V

    .line 495
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 482
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onResume()V

    .line 485
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->reGenerateData()V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public refreshUI(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string v2, "channel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    .line 181
    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mIndex:I

    .line 182
    const-string v2, "LEVEL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mLevel:I

    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->refreshUI()V

    .line 185
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 187
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mGridView:Landroid/widget/GridView;

    iget v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 190
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    move-result-object v0

    .line 192
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->doChannelSelection(I)V

    goto :goto_0

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public showAddBabyPage()V
    .locals 4

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->startActivity(Landroid/content/Intent;)V

    .line 555
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 556
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 545
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 546
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->startActivity(Landroid/content/Intent;)V

    .line 550
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
