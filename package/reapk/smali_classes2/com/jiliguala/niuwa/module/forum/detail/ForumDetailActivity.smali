.class public Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;
.implements Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;
.implements Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

.field private mFav:Z

.field private mFavImage:Landroid/widget/ImageView;

.field private mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

.field private mOutputFileUri:Landroid/net/Uri;

.field public mPicturePath:Ljava/lang/String;

.field private mShareImage:Landroid/widget/ImageView;

.field private mTitleName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->jumpToCrop(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    return-object v0
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 452
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$5;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$6;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V

    .line 453
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 473
    return-void
.end method

.method private cropOrShowPic(IILjava/lang/String;)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "w"    # I
    .param p3, "pic"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 412
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

    .line 413
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$3;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 419
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mPicturePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->jumpToCrop(Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->updateFragmentThumb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doShareFav()V
    .locals 20

    .prologue
    .line 261
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->performFavPost()V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getRoot()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 263
    .local v18, "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    if-eqz v18, :cond_0

    .line 264
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    move-object/from16 v19, v0

    .line 265
    .local v19, "res":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;

    move-result-object v1

    .line 266
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    const-string v2, "Read View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setEventName(Ljava/lang/String;)V

    .line 267
    const-string v4, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u5b66\u5427"

    .line 268
    .local v4, "content":Ljava/lang/String;
    const v2, 0x7f0801ec

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setTopIconRes(I)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareText(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->thmb:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "0"

    const/4 v12, 0x0

    const v13, 0x7f080376

    const v14, 0x7f0f0074

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0f0073

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x3f2e147b    # 0.68f

    invoke-virtual/range {v1 .. v16}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .line 271
    const-string v2, "read"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setSource(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/AudioVideoShareFragment;
    .end local v4    # "content":Ljava/lang/String;
    .end local v18    # "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    .end local v19    # "res":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v17

    .line 277
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

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
    .line 370
    new-instance v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    .line 371
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$2;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->setImageChooserListener(Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;)V

    .line 407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->choose()Ljava/lang/String;

    .line 408
    return-void
.end method

.method private fav()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 143
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getRoot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 165
    .local v2, "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->doShareFav()V

    .line 219
    .end local v2    # "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :goto_0
    return-void

    .line 206
    .restart local v2    # "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->performFavPost()V

    goto :goto_0

    .line 215
    .end local v2    # "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_3
    const v3, 0x7f0f00ca

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 216
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private jumpToCrop(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const v1, 0x7f0f015e

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->addPicEventObserver()V

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v1, "key_avatar_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 446
    const v1, 0x7f01001f

    const v2, 0x7f010014

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private performFavPost()V
    .locals 8

    .prologue
    .line 222
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getRoot()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 223
    .local v4, "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    if-eqz v4, :cond_0

    .line 224
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v3, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Room"

    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v5, "Title"

    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Post Bookmark"

    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    iget-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 233
    .local v0, "body":Lokhttp3/ab;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v6

    .line 235
    invoke-interface {v6, v0}, Lcom/jiliguala/niuwa/logic/network/d;->g(Lokhttp3/ab;)Lrx/e;

    move-result-object v6

    .line 236
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 237
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 238
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V

    .line 239
    invoke-virtual {v6, v7}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v6

    .line 233
    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 256
    .end local v0    # "body":Lokhttp3/ab;
    .end local v1    # "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private updateFragmentThumb(Ljava/lang/String;)V
    .locals 1
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$4;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseFromAlbum()V
    .locals 2

    .prologue
    .line 359
    const/16 v1, 0x123

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 362
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 330
    sparse-switch p1, :sswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 333
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->submit(ILandroid/content/Intent;)V

    goto :goto_0

    .line 338
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->fav()V

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x123 -> :sswitch_0
        0x126 -> :sswitch_0
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->finish()V

    .line 296
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->overridePendingTransition(II)V

    .line 298
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 106
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 109
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    .line 110
    .local v7, "fm":Landroid/support/v4/app/ag;
    invoke-static {v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 111
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getRoot()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 113
    .local v9, "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    if-eqz v9, :cond_0

    .line 114
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v8, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Room"

    iget-object v2, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "Title"

    iget-object v2, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Post Share Dialog"

    .line 118
    invoke-virtual {v1, v2, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    iget-object v1, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->thmb:Ljava/lang/String;

    iget-object v2, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    iget-object v3, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->abst:Ljava/lang/String;

    iget-object v4, v9, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    const-string v1, "post"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 126
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v7    # "fm":Landroid/support/v4/app/ag;
    .end local v8    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "obj":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->fav()V

    goto :goto_0

    .line 129
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;

    move-result-object v6

    .line 130
    .local v6, "dlg":Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;
    invoke-virtual {v6, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->setListener(Lcom/jiliguala/niuwa/module/forum/detail/listener/SortListener;)V

    .line 131
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getTotalFlr()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->setTotalFlr(I)V

    .line 132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSortingType()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->setSortType(I)V

    .line 133
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumSortingDlg;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090038 -> :sswitch_1
        0x7f0901f9 -> :sswitch_2
        0x7f09058f -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->setContentView(I)V

    .line 304
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mShareImage:Landroid/widget/ImageView;

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mShareImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v0, 0x7f0901f9

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFavImage:Landroid/widget/ImageView;

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFavImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v0, 0x7f09058f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .line 312
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    const v1, 0x7f090158

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 315
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onJumpFlr(I)V
    .locals 2
    .param p1, "flr"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showProgress()V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    const-string v1, "\u8df3\u8f6c\u697c\u5c42"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doJumpAction(I)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doResetListView()V

    .line 100
    return-void
.end method

.method public onNormalPicUpdate(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 488
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 490
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v1

    .line 491
    .local v1, "size":[I
    const/4 v3, 0x0

    aget v2, v1, v3

    .line 492
    .local v2, "w":I
    const/4 v3, 0x1

    aget v0, v1, v3

    .line 493
    .local v0, "h":I
    invoke-direct {p0, v0, v2, p2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->cropOrShowPic(IILjava/lang/String;)V

    .line 495
    .end local v0    # "h":I
    .end local v1    # "size":[I
    .end local v2    # "w":I
    :cond_0
    return-void
.end method

.method public onOnlyShowRoot()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showProgress()V

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    const-string v1, "\u53ea\u770b\u697c\u4e3b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowOwnerAction()V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doResetListView()V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 483
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 484
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 485
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 478
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 479
    return-void
.end method

.method public onSortNew()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showProgress()V

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5e8f\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowAscOrderAction()V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doResetListView()V

    .line 76
    return-void
.end method

.method public onSortOld()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showProgress()V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    const-string v1, "\u5012\u5e8f\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doShowDescOrderAction()V

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mForumDetailFragment:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->doResetListView()V

    .line 84
    return-void
.end method

.method public shareCancel()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public shareComplete()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public showFavAndShare(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "titleName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 287
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mShareImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFavImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mTitleName:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f002a

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "titleName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void

    .restart local p2    # "titleName":Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 287
    goto :goto_0

    :cond_2
    move v1, v2

    .line 288
    goto :goto_1
.end method

.method public takePhoto()V
    .locals 2

    .prologue
    .line 346
    const/16 v1, 0x126

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 349
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0
.end method

.method public updateFavIcon(Z)V
    .locals 2
    .param p1, "fav"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    .line 283
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFavImage:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mFav:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0802d3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 284
    return-void

    .line 283
    :cond_0
    const v0, 0x7f0802dc

    goto :goto_0
.end method
