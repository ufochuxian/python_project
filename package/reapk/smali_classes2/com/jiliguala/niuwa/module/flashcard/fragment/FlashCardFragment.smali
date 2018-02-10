.class public Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/nostra13/universalimageloader/core/d/a;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static options:Lcom/nostra13/universalimageloader/core/c;


# instance fields
.field private flashCardIv:Landroid/widget/ImageView;

.field private isFlashCard:Z

.field private isNeedBottomBarPlaceHolder:Z

.field private mBgColorID:I

.field private mCWord:Ljava/lang/String;

.field private mColor:Ljava/lang/String;

.field private mContainer:Landroid/view/View;

.field private mFlashCardCtv:Landroid/widget/TextView;

.field private mFlashCardTv:Landroid/widget/TextView;

.field private mMask:Landroid/view/View;

.field private mPicUrl:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mTitleContainer:Landroid/widget/LinearLayout;

.field private mWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isFlashCard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->loadFlashCardImage()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    .locals 4
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .line 70
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;-><init>()V

    .line 73
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const v2, 0x7f08016b

    .line 74
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 75
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    sput-object v1, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->options:Lcom/nostra13/universalimageloader/core/c;

    .line 78
    :cond_0
    return-object v0
.end method

.method private getColorIfIsFlash()I
    .locals 2

    .prologue
    const v0, 0x7f060086

    .line 153
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    if-eqz v1, :cond_0

    .line 159
    const v0, 0x7f0600e7

    goto :goto_0
.end method

.method private loadFlashCardImage()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mPicUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mPicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/450x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    sget-object v3, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->options:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 202
    :cond_0
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "position"    # I

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disablePlayFlashCard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 354
    :cond_4
    return-void
.end method

.method public doScale()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const v2, 0x3f99999a    # 1.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public enablePlayFlashCard()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 334
    :cond_4
    return-void
.end method

.method public getBgColor()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mBgColorID:I

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hideTitleContainer()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x1

    const v1, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 255
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 297
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;

    .line 310
    .local v0, "flashCardInterface":Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;
    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/FlashCardInterface;->clickFlashCardItemToPlay()V

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x7f090158 -> :sswitch_0
        0x7f09020d -> :sswitch_0
        0x7f09020e -> :sswitch_0
        0x7f090210 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    const/4 v2, 0x0

    .line 107
    const v1, 0x7f0b009e

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09020e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    .line 112
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09030f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mMask:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mMask:Landroid/view/View;

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0900b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "bottom_bar_placeholder":Landroid/view/View;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isNeedBottomBarPlaceHolder:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090581

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 123
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isFlashCard:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->loadFlashCardImage()V

    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mCWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mFlashCardCtv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mColor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 138
    const-string v1, "#FF2fca89"

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mColor:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->flashCardIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 144
    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mBgColorID:I

    if-nez v1, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getColorIfIsFlash()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mBgColorID:I

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mBgColorID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 121
    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 123
    :cond_3
    const/4 v2, 0x4

    goto/16 :goto_1
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 273
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 277
    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/d;->e()V

    .line 278
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 279
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    return-void

    .line 282
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 284
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 229
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment$2;-><init>(Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 207
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 235
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mBgColorID:I

    .line 362
    return-void
.end method

.method public setCWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCWord"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mCWord:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mColor"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mColor:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setFlashCard(Z)V
    .locals 0
    .param p1, "flashCard"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isFlashCard:Z

    .line 374
    return-void
.end method

.method public setNeedBottomBarPlaceHolder(Z)V
    .locals 0
    .param p1, "needBottomBarPlaceHolder"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->isNeedBottomBarPlaceHolder:Z

    .line 365
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mPicUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWord"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mWord:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public showOrHideMask(I)V
    .locals 2
    .param p1, "show"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mMask:Landroid/view/View;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mMask:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showTitleContainer()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->mTitleContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :cond_0
    return-void
.end method
