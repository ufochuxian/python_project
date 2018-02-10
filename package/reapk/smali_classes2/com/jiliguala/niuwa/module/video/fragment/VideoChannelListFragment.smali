.class public Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
.super Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;
    }
.end annotation


# static fields
.field public static final DELAY_MILLIS:I = 0x12c

.field private static final FAV_LIST_INDEX:I = 0x1

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final RNT_PLAY_LIST_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackBtn:Landroid/view/View;

.field private mChannel:Ljava/lang/String;

.field mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field mEnableGridViewRunnable:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;

.field private mGridView:Landroid/widget/GridView;

.field private mIndex:I

.field private mLevel:I

.field private mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchBtn:Landroid/widget/TextView;

.field private mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

.field private m_end_time:J

.field private m_start_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mEnableGridViewRunnable:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 68
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->m_start_time:J

    .line 69
    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->m_end_time:J

    .line 73
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->doChannelSelection(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 245
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$6;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    .line 246
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 262
    return-void
.end method

.method private doChannelSelection(I)V
    .locals 19
    .param p1, "position"    # I

    .prologue
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v10

    .line 283
    .local v10, "channelItem":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    packed-switch p1, :pswitch_data_0

    .line 316
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Playlist_name"

    iget-object v3, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Playlist Click"

    invoke-static {v2, v3, v12}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    iget-object v9, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 322
    .local v9, "channel":Ljava/lang/String;
    const-string v15, ""

    .line 323
    .local v15, "ttl":Ljava/lang/String;
    const-string v2, "1000"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    iget-object v2, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 325
    .local v11, "index":I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_4

    .line 326
    iget-object v2, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 335
    .end local v11    # "index":I
    :cond_0
    :goto_0
    iget-boolean v2, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->extend:Z

    if-eqz v2, :cond_5

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 337
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    move-result-object v18

    .line 339
    .local v18, "videoSecondaryListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->setChnId(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->setTtl(Ljava/lang/String;)V

    .line 342
    const-class v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->onHiddenChanged(Z)V

    .line 367
    .end local v9    # "channel":Ljava/lang/String;
    .end local v10    # "channelItem":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "ttl":Ljava/lang/String;
    .end local v18    # "videoSecondaryListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;
    :cond_1
    :goto_1
    return-void

    .line 286
    .restart local v10    # "channelItem":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 285
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    move-result-object v17

    .line 288
    .local v17, "videoRntPListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;
    const-class v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;->onHiddenChanged(Z)V

    goto :goto_1

    .line 297
    .end local v17    # "videoRntPListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoRntPListFragment;
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->showLoginPage()V

    goto :goto_1

    .line 299
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v2

    if-nez v2, :cond_3

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->showAddBabyPage()V

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 303
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    move-result-object v16

    .line 306
    .local v16, "videoFavListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    const-class v2, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;->onHiddenChanged(Z)V

    goto :goto_1

    .line 328
    .end local v16    # "videoFavListFragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoFavListFragment;
    .restart local v9    # "channel":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "ttl":Ljava/lang/String;
    :cond_4
    iget-object v15, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    goto :goto_0

    .line 346
    .end local v11    # "index":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v13, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Name"

    invoke-interface {v13, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Channel Select"

    .line 351
    invoke-virtual {v2, v3, v13}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v14

    .line 355
    .local v14, "transaction":Landroid/support/v4/app/an;
    const v2, 0x7f010022

    const v3, 0x7f010025

    invoke-virtual {v14, v2, v3}, Landroid/support/v4/app/an;->a(II)Landroid/support/v4/app/an;

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 357
    invoke-virtual {v14}, Landroid/support/v4/app/an;->i()I

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iget-object v3, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->extend:Z

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onChangeChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    new-instance v3, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;

    iget-object v4, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v7, v10, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->extend:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;->onChnItemClicked(Lcom/jiliguala/niuwa/module/interfaces/ChannelSelectInfo;)V

    goto/16 :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 90
    sget-object v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .line 91
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;-><init>()V

    .line 94
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
    :cond_0
    return-object v0
.end method

.method private generateRntPlayList()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .locals 3

    .prologue
    .line 473
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;-><init>()V

    .line 474
    .local v0, "videoFavDataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    const-string v1, "-2"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 475
    const-string v1, "2131230824"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    .line 476
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f026b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    .line 477
    return-object v0
.end method

.method private generateVideoFavList()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;-><init>()V

    .line 466
    .local v0, "videoFavDataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    const-string v1, "1000"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 467
    const-string v1, "2131230821"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    .line 468
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    .line 469
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 182
    const v0, 0x7f09048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    const v1, 0x7f0f026c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mSearchBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 199
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mBackBtn:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mBackBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    .line 207
    new-instance v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mAdapter:Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;

    check-cast v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->setmCurrentChannel(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$4;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 241
    return-void
.end method

.method private reGenerateData()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->generateRntPlayList()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->generateVideoFavList()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method private refreshUI()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->updateDateSet(Ljava/util/ArrayList;)V

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->setmCurrentChannel(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method private switchContent(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 371
    .local v0, "transaction":Landroid/support/v4/app/an;
    const v1, 0x7f01001d

    const v2, 0x7f010013

    const v3, 0x7f010012

    const v4, 0x7f01001e

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 372
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    const v1, 0x7f09049f

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 374
    invoke-virtual {v0, p2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 375
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 379
    :goto_0
    return-void

    .line 377
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
    .line 482
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v3

    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->channel:Ljava/lang/String;

    .line 483
    .local v0, "currentChannel":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    .line 485
    .local v1, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    .end local v0    # "currentChannel":Ljava/lang/String;
    .end local v1    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 483
    .restart local v0    # "currentChannel":Ljava/lang/String;
    .restart local v1    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "currentChannel":Ljava/lang/String;
    .end local v1    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 493
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 414
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 409
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onAttach(Landroid/app/Activity;)V

    .line 384
    check-cast p1, Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mListener:Lcom/jiliguala/niuwa/module/interfaces/IChannelActionListener;

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->addEventObserver()V

    .line 101
    const-string v3, "0"

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 104
    const-string v3, "channel"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    .line 108
    :cond_0
    const-string v3, "0"

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->reGenerateData()V

    .line 111
    if-eqz v0, :cond_1

    .line 112
    const-string v3, "channel"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    .line 113
    const-string v3, "channel_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    .local v1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    if-eqz v1, :cond_1

    .line 115
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .end local v1    # "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->onHiddenChanged(Z)V

    .line 119
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 391
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 398
    :cond_0
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 403
    :cond_1
    return-object v0
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
    .line 168
    const v1, 0x7f0b0024

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->initUI(Landroid/view/View;)V

    .line 171
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshUI()V

    .line 172
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onDestroy()V

    .line 436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->onDestroy()V

    .line 439
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onHiddenChanged(Z)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .line 151
    .local v0, "videoActivity":Lcom/jiliguala/niuwa/module/video/VideoActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onPlay()V

    .line 154
    .end local v0    # "videoActivity":Lcom/jiliguala/niuwa/module/video/VideoActivity;
    :cond_0
    return-void
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->showAddBabyPage()V

    .line 269
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 427
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onPause()V

    .line 428
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/audio/fragment/BaseSelectionNormalFragment;->onResume()V

    .line 274
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->m_start_time:J

    .line 276
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "channelData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->reGenerateData()V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->updateDateSet(Ljava/util/ArrayList;)V

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public refreshUI(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v2, "channel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    .line 124
    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mIndex:I

    .line 125
    const-string v2, "LEVEL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mLevel:I

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->refreshUI()V

    .line 128
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 130
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mGridView:Landroid/widget/GridView;

    iget v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 133
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mVideoChannelAdapter:Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v0

    .line 135
    .local v0, "channel":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->doChannelSelection(I)V

    goto :goto_0

    .line 133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public showAddBabyPage()V
    .locals 4

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->startActivity(Landroid/content/Intent;)V

    .line 444
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 445
    return-void
.end method

.method public showLoginPage()V
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const v1, 0x7f0f00cb

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 453
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
