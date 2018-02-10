.class public Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "SettingPersonalFragment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private locModifyDlg:Landroid/app/Dialog;

.field private mMobileTv:Landroid/widget/TextView;

.field private mNickTv:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private modifyMobile:Landroid/widget/TextView;

.field private modifyUserCargoAddress:Landroid/widget/TextView;

.field private modifyUserCity:Landroid/widget/TextView;

.field private modifyUserDesc:Landroid/widget/TextView;

.field private modifyUserNick:Landroid/widget/TextView;

.field private modifyUserPwd:Landroid/widget/TextView;

.field private userAva:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

.field private userAvaTv:Landroid/widget/TextView;

.field private userCity:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 76
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showDescDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showNickDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showUserPwdModifyDlg()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showLocationModifyDlg()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showLoginDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserCity()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserNick()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAva:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 172
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$5;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$6;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    .line 173
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 193
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 141
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .line 142
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;-><init>()V

    .line 145
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    :cond_0
    return-object v0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 291
    const v4, 0x7f090014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v4, 0x7f090353

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserNick:Landroid/widget/TextView;

    .line 293
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserNick:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->F()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "type":Ljava/lang/String;
    const v4, 0x7f090354

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserPwd:Landroid/widget/TextView;

    .line 297
    const v4, 0x7f090355

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 298
    .local v2, "modifyPwdContainer":Landroid/view/View;
    const v4, 0x7f09034c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyMobile:Landroid/widget/TextView;

    .line 299
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyMobile:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const-string v4, "email"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mobile"

    .line 301
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 302
    .local v1, "canModifyPwd":Z
    :goto_0
    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserPwd:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v4, 0x7f090351

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserCity:Landroid/widget/TextView;

    .line 305
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserCity:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v4, 0x7f0902f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userCity:Landroid/widget/TextView;

    .line 307
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserCity()V

    .line 308
    const v4, 0x7f090350

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserCargoAddress:Landroid/widget/TextView;

    .line 309
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserCargoAddress:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v4, 0x7f090352

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserDesc:Landroid/widget/TextView;

    .line 311
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->modifyUserDesc:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v4, 0x7f0905d6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAvaTv:Landroid/widget/TextView;

    .line 314
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAvaTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v4, 0x7f0905d5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAva:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 316
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAva:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v4, 0x7f090387

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mNickTv:Landroid/widget/TextView;

    .line 319
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserNick()V

    .line 321
    const v4, 0x7f090349

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mMobileTv:Landroid/widget/TextView;

    .line 322
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserMobile()V

    .line 324
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "ava":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 326
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->loadUserAvatar(Ljava/lang/String;)V

    .line 328
    :cond_1
    return-void

    .end local v0    # "ava":Ljava/lang/String;
    .end local v1    # "canModifyPwd":Z
    :cond_2
    move v1, v5

    .line 301
    goto/16 :goto_0

    .line 302
    .restart local v1    # "canModifyPwd":Z
    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_1
.end method

.method private loadUserAvatar(Ljava/lang/String;)V
    .locals 4
    .param p1, "ava"    # Ljava/lang/String;

    .prologue
    .line 669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userAva:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->e()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 674
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showDescDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0901ae

    const/4 v9, 0x0

    .line 351
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f1000b4

    invoke-direct {v1, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 352
    .local v1, "descModifyDlg":Landroid/app/Dialog;
    const v7, 0x7f0b0147

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 353
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v6, v7, 0xa

    .line 355
    .local v6, "width":I
    const/4 v3, -0x2

    .line 356
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/view/Window;->setLayout(II)V

    .line 357
    const v7, 0x7f0905de

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0136

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 358
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 364
    .local v2, "et":Landroid/widget/EditText;
    const/16 v5, 0x14

    .line 365
    .local v5, "maxLength":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_0

    .line 366
    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 372
    .end local v2    # "et":Landroid/widget/EditText;
    .end local v5    # "maxLength":I
    :cond_1
    const v7, 0x7f0900fa

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;

    invoke-direct {v8, p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v7, 0x7f090156

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;

    invoke-direct {v8, p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 421
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 422
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 423
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v4, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 424
    const/4 v7, 0x2

    invoke-virtual {v4, v9, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 425
    return-void
.end method

.method private showLocationModifyDlg()V
    .locals 10

    .prologue
    const v9, 0x7f0902ee

    const/4 v8, 0x0

    .line 208
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1000b4

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    .line 209
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v6, 0x7f0b0147

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 210
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa

    .line 212
    .local v4, "width":I
    const/4 v1, -0x2

    .line 213
    .local v1, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/Window;->setLayout(II)V

    .line 214
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v6, 0x7f0905de

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0133

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "location":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 218
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 222
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v6, 0x7f0900fa

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$7;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$7;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v6, 0x7f090156

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$8;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$8;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 271
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v2, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 274
    const/4 v5, 0x2

    invoke-virtual {v2, v8, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 276
    return-void
.end method

.method private showLoginDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 285
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->startActivity(Landroid/content/Intent;)V

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showNickDialog()V
    .locals 14

    .prologue
    const v13, 0x7f090156

    const v12, 0x7f090386

    const/4 v11, 0x0

    .line 428
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f1000b4

    invoke-direct {v1, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 429
    .local v1, "dialog":Landroid/app/Dialog;
    const v8, 0x7f0b0147

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 430
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 431
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/login/a;->t()Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "nick":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 433
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 437
    .local v2, "et":Landroid/widget/EditText;
    const/16 v5, 0x14

    .line 438
    .local v5, "maxLength":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_0

    .line 439
    invoke-virtual {v6, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 441
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 445
    .end local v2    # "et":Landroid/widget/EditText;
    .end local v5    # "maxLength":I
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v8

    mul-int/lit8 v8, v8, 0x9

    div-int/lit8 v7, v8, 0xa

    .line 446
    .local v7, "width":I
    const/4 v3, -0x2

    .line 447
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Landroid/view/Window;->setLayout(II)V

    .line 448
    const v8, 0x7f0900fa

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$11;

    invoke-direct {v9, p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$11;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Landroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/a/d;

    invoke-virtual {v1, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/16 v10, 0x66

    aput v10, v9, v11

    invoke-direct {v0, v8, v9}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    .line 455
    .local v0, "checker":Lcom/jiliguala/niuwa/common/helper/a/b;
    new-instance v9, Lcom/jiliguala/niuwa/common/helper/c/f;

    invoke-direct {v9, v0}, Lcom/jiliguala/niuwa/common/helper/c/f;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Lcom/jiliguala/niuwa/common/helper/c/f;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 456
    invoke-virtual {v1, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;

    invoke-direct {v9, p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Landroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 508
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 509
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 510
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v4, v8, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 511
    const/4 v8, 0x2

    invoke-virtual {v4, v11, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 512
    return-void
.end method

.method private showUserPwdModifyDlg()V
    .locals 10

    .prologue
    const v9, 0x7f090156

    const v8, 0x7f09041e

    const/4 v7, 0x0

    .line 515
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f1000b4

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    .line 516
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v5, 0x7f0b0147

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 518
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 519
    .local v3, "width":I
    const/4 v1, -0x2

    .line 520
    .local v1, "height":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 521
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v5, 0x7f0905de

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f0135

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 523
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x67

    aput v6, v5, v7

    invoke-direct {v0, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    .line 524
    .local v0, "checker":Lcom/jiliguala/niuwa/common/helper/a/b;
    new-instance v5, Lcom/jiliguala/niuwa/common/helper/c/h;

    invoke-direct {v5, v0}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 526
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 528
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    const v5, 0x7f0900fa

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 593
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 594
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 595
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->locModifyDlg:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v2, v4, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 596
    const/4 v4, 0x2

    invoke-virtual {v2, v7, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 597
    return-void
.end method

.method private updateUserCity()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "city":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->userCity:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u672a\u8bbe\u7f6e"

    .end local v0    # "city":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method private updateUserMobile()V
    .locals 2

    .prologue
    .line 344
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mMobileTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    return-void
.end method

.method private updateUserNick()V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "nick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mNickTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->addPicEventObserver()V

    .line 167
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 168
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 198
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const v2, 0x7f0b0128

    invoke-virtual {p1, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "content":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->initUI(Landroid/view/View;)V

    .line 202
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Personal Info View"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 204
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->updateUserMobile()V

    .line 161
    return-void
.end method

.method public onUserAvatarUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 603
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, v1, p1, v2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 666
    return-void
.end method
