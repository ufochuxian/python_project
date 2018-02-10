.class public Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final KEY_AVATAR_URL:Ljava/lang/String; = "KEY_AVATAR_URL"

.field private static final KEY_HINT:Ljava/lang/String; = "KEY_HINT"

.field public static final REQUEST_CODE_PROFILE_COMPLETION:I = 0x8fd

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAvatarIv:Landroid/widget/ImageView;

.field mAvatarUrl:Ljava/lang/String;

.field mBackBtn:Landroid/widget/ImageView;

.field mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field mCompleteBtn:Landroid/widget/TextView;

.field mHint:Ljava/lang/String;

.field mHintText:Landroid/widget/TextView;

.field mNicknameEditText:Landroid/widget/EditText;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mRootView:Landroid/widget/RelativeLayout;

.field mTitle:Landroid/widget/TextView;

.field mTopRightBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;-><init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 155
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$2;-><init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$3;-><init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;)V

    .line 156
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 176
    return-void
.end method

.method private loadUserAvatar(Ljava/lang/String;)V
    .locals 4
    .param p1, "ava"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->e()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 295
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static makeIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_HINT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->setResult(I)V

    .line 285
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 286
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->overridePendingTransition(II)V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    const v2, 0x7f0b0041

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->setContentView(I)V

    .line 186
    const v2, 0x7f090477

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mRootView:Landroid/widget/RelativeLayout;

    .line 187
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->addPicEventObserver()V

    .line 191
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 200
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 201
    const v2, 0x7f090588

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mTitle:Landroid/widget/TextView;

    .line 202
    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mTopRightBtn:Landroid/widget/TextView;

    .line 203
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mTopRightBtn:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    const v2, 0x7f090157

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mCompleteBtn:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f0905e0

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mNicknameEditText:Landroid/widget/EditText;

    .line 206
    const v2, 0x7f090083

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarIv:Landroid/widget/ImageView;

    .line 207
    const v2, 0x7f090262

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHintText:Landroid/widget/TextView;

    .line 209
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 214
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f0f0170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mBackBtn:Landroid/widget/ImageView;

    const v3, 0x7f080198

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mBackBtn:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mCompleteBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_HINT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHint:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHintText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    new-instance v2, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mCompleteBtn:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0x66

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 228
    new-instance v2, Lcom/jiliguala/niuwa/common/helper/c/f;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/common/helper/c/f;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mNicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/helper/c/f;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 233
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 238
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Add Personal Info View"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 240
    const v2, 0x7f09014c

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, "closeBtn":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v1, "KEY_AVATAR_URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarUrl:Ljava/lang/String;

    .line 274
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mNicknameEditText:Landroid/widget/EditText;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/ad;->a(Landroid/widget/EditText;I)V

    .line 280
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "KEY_AVATAR_URL"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onUserAvatarUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 301
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$4;-><init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v1, p1, v2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 330
    return-void
.end method
