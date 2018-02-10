.class public Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final KEY_FROM_AVA_CLICK:Ljava/lang/String; = "KEY_FROM_AVA_CLICK"

.field public static final KEY_UID:Ljava/lang/String; = "KEY_UID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private childListContainer:Landroid/widget/LinearLayout;

.field private fromAvaClick:Z

.field private groupId:Ljava/lang/String;

.field private isMeMySelf:Z

.field lastTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddBabyIv:Landroid/widget/ImageView;

.field private mBabyTv:Landroid/view/View;

.field private mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

.field private mDesc:Landroid/widget/TextView;

.field private mEshopEntrance:Landroid/view/View;

.field private mGiftContainer:Landroid/widget/RelativeLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNoBabyHolder:Landroid/view/View;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPersonalProfileBg:Landroid/widget/ImageView;

.field private mProfileBgMask:Landroid/widget/FrameLayout;

.field private mTagContainer:Landroid/widget/LinearLayout;

.field private mUserAvaIv:Landroid/widget/ImageView;

.field private mUsersInfoTv:Landroid/widget/TextView;

.field private uid:Ljava/lang/String;

.field private userCity:Landroid/widget/TextView;

.field private userGuaId:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 77
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->lastTags:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->showMyForum(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->refreshUI(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->loadUserInfoBg(Ljava/lang/String;)V

    return-void
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 173
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    .line 174
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 194
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 140
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .line 141
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;-><init>()V

    .line 144
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
    :cond_0
    return-object v0
.end method

.method private gotoAddBaby()V
    .locals 4

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 441
    return-void
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v5, 0x7f090014

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 283
    const v1, 0x7f090044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mAddBabyIv:Landroid/widget/ImageView;

    .line 284
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mAddBabyIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    const v1, 0x7f09038e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mNoBabyHolder:Landroid/view/View;

    .line 286
    const v1, 0x7f090141

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mBabyTv:Landroid/view/View;

    .line 288
    const v1, 0x7f090333

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->fromAvaClick:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const v1, 0x7f0904c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->fromAvaClick:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->fromAvaClick:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v1, 0x7f090246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->fromAvaClick:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f0904c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v1, 0x7f0904c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    .line 296
    const v1, 0x7f0905d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUserAvaIv:Landroid/widget/ImageView;

    .line 297
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUserAvaIv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v1, 0x7f0905dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUsersInfoTv:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUsersInfoTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v1, 0x7f0903ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mDesc:Landroid/widget/TextView;

    .line 301
    const v1, 0x7f0905d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userCity:Landroid/widget/TextView;

    .line 302
    const v1, 0x7f0905d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userGuaId:Landroid/widget/TextView;

    .line 303
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userGuaId:Landroid/widget/TextView;

    const v4, 0x7f0f00ed

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userGuaId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v1, 0x7f09027e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mTagContainer:Landroid/widget/LinearLayout;

    .line 306
    const v1, 0x7f09012d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->childListContainer:Landroid/widget/LinearLayout;

    .line 308
    const v1, 0x7f0904c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mEshopEntrance:Landroid/view/View;

    .line 309
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mEshopEntrance:Landroid/view/View;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mEshopEntrance:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const v1, 0x7f0904c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    .line 314
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    const v1, 0x7f0903fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    .line 318
    const v1, 0x7f0901f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const v1, 0x7f090238

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    .line 322
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "currentUserId":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 329
    :goto_5
    const v1, 0x7f09047e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    return-void

    .end local v0    # "currentUserId":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 288
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 289
    goto/16 :goto_1

    .line 290
    :cond_2
    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 291
    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 309
    goto :goto_4

    .line 327
    .restart local v0    # "currentUserId":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method private loadUserAvatar(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAva"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/100x100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->e()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 449
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadUserInfoBg(Ljava/lang/String;)V
    .locals 4
    .param p1, "bg"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?imageMogr2/thumbnail/600x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    .line 455
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$6;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    .line 454
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 482
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshChildList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    .local p2, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_2

    .line 349
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mNoBabyHolder:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mBabyTv:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    :cond_1
    return-void

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mNoBabyHolder:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mBabyTv:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->childListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 363
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v8, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x40400000    # 3.0f

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v14, v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 366
    if-eqz p1, :cond_1

    .line 367
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 368
    .local v6, "item":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mInflater:Landroid/view/LayoutInflater;

    const v16, 0x7f0b0073

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 369
    .local v13, "view":Landroid/view/View;
    const v15, 0x7f090086

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 370
    .local v7, "iv":Lcom/makeramen/roundedimageview/RoundedImageView;
    iget-object v15, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 371
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?imageMogr2/thumbnail/200x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v15

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v16

    .line 373
    invoke-virtual/range {v16 .. v16}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v16

    new-instance v17, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$5;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)V

    .line 372
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v12, v7, v0, v1}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 401
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    const v15, 0x7f090569

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 402
    .local v4, "container":Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v15, 0x7f090378

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 404
    .local v9, "nameTv":Landroid/widget/TextView;
    const v15, 0x7f090046

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 405
    .local v3, "ageTv":Landroid/widget/TextView;
    iget-object v15, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v10

    .line 406
    .local v10, "time":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 407
    .local v5, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 408
    .local v2, "age":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 409
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 411
    :cond_4
    iget-object v15, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->childListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private refreshUI(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 5
    .param p1, "userInfo"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->loadUserAvatar(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUsersInfoTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->loadUserInfoBg(Ljava/lang/String;)V

    .line 219
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->updateChildListUI(Ljava/util/ArrayList;)V

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v0, :cond_7

    .line 223
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mDesc:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_2
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->updateUserTags(Ljava/util/ArrayList;)V

    .line 230
    :cond_2
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userCity:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userCity:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->userGuaId:Landroid/widget/TextView;

    const v2, 0x7f0f00ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_4
    return-void

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mUsersInfoTv:Landroid/widget/TextView;

    const v2, 0x7f0f00ac

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 223
    :cond_6
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mDesc:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move v0, v1

    .line 233
    goto :goto_3
.end method

.method private showLoginDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 429
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showMyForum(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "indexToShow"    # I

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 487
    const-string v1, "KEY_UID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "KEY_ME_MYSELF"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string v1, "KEY_INDEX_TO_SHOW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 491
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 492
    return-void
.end method

.method private updateChildListUI(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "newBabyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mAddBabyIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v1, :cond_0

    .line 339
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->M()Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->refreshChildList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->refreshChildList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateUserTags(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->getInstance()Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->lastTags:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mTagContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->updateUserTags(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 498
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 153
    const-string v4, "KEY_FROM_AVA_CLICK"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->fromAvaClick:Z

    .line 154
    const-string v4, "KEY_UID"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "mySelf":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    .line 163
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->addPicEventObserver()V

    .line 164
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Profile Picture Click"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "View"

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v3, :cond_3

    const-string v3, "Self"

    :goto_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Profile View"

    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 167
    :cond_3
    const-string v3, "Other"

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    .line 242
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 243
    const v2, 0x7f0b017c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->initUIComponent(Landroid/view/View;)V

    .line 245
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v2, :cond_1

    .line 246
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    .line 247
    .local v0, "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->refreshUI(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 279
    .end local v0    # "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->uid:Ljava/lang/String;

    .line 253
    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;)Lrx/e;

    move-result-object v3

    .line 254
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 255
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    invoke-virtual {v3, v4, v5, v6}, Lrx/e;->q(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v3

    .line 257
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    .line 258
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 433
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 435
    return-void
.end method

.method public onNormalPicUpdate(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 502
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V

    .line 503
    invoke-virtual {v0, p1, p2, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 563
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 199
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isMeMySelf:Z

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    .line 201
    .local v0, "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->refreshUI(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 205
    .end local v0    # "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    :cond_0
    return-void
.end method
