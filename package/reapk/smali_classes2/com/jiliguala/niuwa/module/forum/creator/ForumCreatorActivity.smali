.class public Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;


# static fields
.field public static final KEY_BOARD_NAME:Ljava/lang/String; = "BOARD_NAME"

.field public static final KEY_BOID:Ljava/lang/String; = "CUR_BOID"

.field public static final KEY_TAGS:Ljava/lang/String; = "KEY_TAGS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private choosenTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forumTagPop:Landroid/widget/PopupWindow;

.field private icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

.field private mBoardName:Ljava/lang/String;

.field private mBoid:I

.field private mContainer:Landroid/view/View;

.field private mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutputFileUri:Landroid/net/Uri;

.field public mPicturePath:Ljava/lang/String;

.field private mPoster:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

.field private tagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->tagList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->choosenTags:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->postMyForum()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->choosenTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoid:I

    return v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->jumpToCrop(Ljava/lang/String;)V

    return-void
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 402
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$11;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$11;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$2;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    .line 403
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 423
    return-void
.end method

.method private cropOrShowPic(IILjava/lang/String;)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "w"    # I
    .param p3, "pic"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 521
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 522
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$3;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->jumpToCrop(Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_1
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    .line 531
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->updateFragmentThumb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTakeOrChoosePhoto(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->setImageChooserListener(Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;)V

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->choose()Ljava/lang/String;

    .line 373
    return-void
.end method

.method private jumpToCrop(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const v1, 0x7f0f015e

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->addPicEventObserver()V

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "key_avatar_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 396
    const v1, 0x7f01001f

    const v2, 0x7f010014

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private postMyForum()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    .line 462
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumTitle()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 468
    const v0, 0x7f0f009a

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumContent()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 474
    const v0, 0x7f0f0099

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 478
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showProgressDialog()V

    .line 479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->choosenTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->choosenTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 483
    .local v13, "tagStr":Ljava/lang/String;
    new-instance v12, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;

    invoke-direct {v12}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;-><init>()V

    .line 484
    .local v12, "tag":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v12, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;->tagid:I

    .line 485
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    .end local v12    # "tag":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;
    .end local v13    # "tagStr":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoid:I

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 491
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    :goto_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v3, "Post"

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    iget v10, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoid:I

    const/4 v11, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v6 .. v11}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_2
.end method

.method private showConfirmDialog()V
    .locals 7

    .prologue
    const v6, 0x7f090156

    const v5, 0x7f0900fa

    const/4 v4, 0x1

    .line 175
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x7f1000b4

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 176
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 177
    const v3, 0x7f0b0197

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 180
    .local v2, "width":I
    const/4 v1, -0x2

    .line 181
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 182
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 183
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    const v3, 0x7f09004c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u662f\u5426\u653e\u5f03\u53d1\u5e16?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$5;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u786e\u8ba4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$6;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private showTagPop(Landroid/view/View;)V
    .locals 12
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 258
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0b0191

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 259
    .local v6, "view":Landroid/view/View;
    const v8, 0x7f0903b9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;

    invoke-direct {v9, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$7;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v8, 0x7f090158

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    .line 269
    .local v0, "all":Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;
    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    .line 270
    .local v5, "top_bottom":I
    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    .line 271
    .local v3, "left_right":I
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    .line 272
    .local v4, "margin":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 310
    .local v1, "csl":Landroid/content/res/ColorStateList;
    const v8, 0x7f090157

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v7

    .line 313
    .local v7, "width":I
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-direct {v8, v6, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    .line 314
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    const v9, 0x7f1001c5

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 315
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 316
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 318
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    const/16 v9, 0x11

    invoke-virtual {v8, p1, v9, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 319
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->forumTagPop:Landroid/widget/PopupWindow;

    new-instance v9, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$8;

    invoke-direct {v9, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$8;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 325
    return-void
.end method

.method private updateFragmentThumb(Ljava/lang/String;)V
    .locals 1
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$10;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseFromAlbum()V
    .locals 2

    .prologue
    .line 451
    const/16 v1, 0x123

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 454
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0
.end method

.method public enablePoster(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPoster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPoster:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 427
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 429
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const/16 v0, 0x126

    if-ne p1, v0, :cond_1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->submit(ILandroid/content/Intent;)V

    .line 433
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumContent()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumTitle()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isRecordDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showConfirmDialog()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->finish()V

    .line 170
    const v2, 0x7f010013

    const v3, 0x7f010020

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b002c

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mContainer:Landroid/view/View;

    .line 223
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->setContentView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .line 225
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->replyInterface:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->setReplyInterface(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;)V

    .line 226
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    const v4, 0x7f090158

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 228
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 230
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00a0

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 235
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v3, 0x7f09058f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mTitle:Landroid/widget/TextView;

    .line 237
    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPoster:Landroid/view/View;

    .line 238
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPoster:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 242
    const-string v3, "CUR_BOID"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoid:I

    .line 243
    const-string v3, "BOARD_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoardName:Ljava/lang/String;

    .line 245
    const-string v3, "KEY_TAGS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->tagList:Ljava/util/ArrayList;

    .line 246
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoardName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53d1\u5e16\u5230: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoardName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Room"

    iget v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mBoid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Post Compose View"

    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNormalPicUpdate(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 509
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 511
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v1

    .line 512
    .local v1, "size":[I
    const/4 v3, 0x0

    aget v2, v1, v3

    .line 513
    .local v2, "w":I
    const/4 v3, 0x1

    aget v0, v1, v3

    .line 514
    .local v0, "h":I
    invoke-direct {p0, v0, v2, p2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->cropOrShowPic(IILjava/lang/String;)V

    .line 516
    .end local v0    # "h":I
    .end local v1    # "size":[I
    .end local v2    # "w":I
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 504
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 505
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 506
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 499
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 500
    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mForumCreatorFragment:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->showProgressDialog()V

    .line 153
    :cond_0
    return-void
.end method

.method public takePhoto()V
    .locals 2

    .prologue
    .line 438
    const/16 v1, 0x126

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 441
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0
.end method
