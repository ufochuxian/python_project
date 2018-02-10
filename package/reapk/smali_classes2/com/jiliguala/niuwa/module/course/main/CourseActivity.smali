.class public Lcom/jiliguala/niuwa/module/course/main/CourseActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/IStartCourseInterface;
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ISubCourseFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/main/CourseActivity$a;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x2bc

.field public static final KEY_COURSE_OBJ:Ljava/lang/String; = "COURSE_OBJ"

.field public static final KEY_ENTER_INDEX:Ljava/lang/String; = "KEY_ENTER_INDEX"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseBgIv:Landroid/widget/ImageView;

.field private coursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

.field private currentPos:I

.field private index:I

.field private mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

.field private mCourseFinishState:Landroid/widget/TextView;

.field private mCpi:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

.field private mCurClickId:I

.field private mIsDestroyed:Z

.field private taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->courseBgIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->index:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Lcom/jiliguala/niuwa/common/widget/MultiViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->currentPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->coursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->doDirectlyShareCourseReport()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 433
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$5;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$6;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    .line 434
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 432
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 453
    return-void
.end method

.method private doDirectlyShareCourseReport()V
    .locals 18

    .prologue
    .line 254
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    move-result-object v1

    .line 255
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setTopIconRes(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->minage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->maxage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cat:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "0"

    const/4 v12, 0x0

    const v13, 0x7f080369

    const v14, 0x7f0f00b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0f0087

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v1 .. v16}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v17

    .line 260
    .local v17, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doShareCourseReport()V
    .locals 8

    .prologue
    .line 225
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "bid":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v3, v0, v6}, Lcom/jiliguala/niuwa/logic/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "key_url"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v5, "NEED_OUTER_BROWSER"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v5, "SHARE_THUMB"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v5, "SHARE_TTL"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v5, "SHARE_DESC"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->desc:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v5, "SHARE_RID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cur:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->tot:I

    if-lt v5, v6, :cond_0

    .line 237
    const-string v5, "SHARE_TYPE"

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    :goto_0
    const-string v5, "SHARE_COURSE_CAT"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cat:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v5, "SHARE_COURSE_AGE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->minage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->maxage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    const v5, 0x7f01001d

    const v6, 0x7f010013

    invoke-virtual {p0, v5, v6}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->overridePendingTransition(II)V

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v2, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "ID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Lesson Report View"

    invoke-virtual {v5, v6, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    return-void

    .line 239
    .end local v2    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v5, "SHARE_TYPE"

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private doShareCourseShare()V
    .locals 8

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 283
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 284
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    .line 287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cat:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->minage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->maxage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setClassData(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 291
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v7, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wei Lesson Share Dialog"

    invoke-virtual {v1, v2, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    .end local v7    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private handleUnLoginAndNoBabyThenShareCourseReport()V
    .locals 3

    .prologue
    const v2, 0x7f0904d5

    .line 409
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCurClickId:I

    if-ne v1, v2, :cond_0

    .line 415
    const v1, 0x7f0f0097

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 416
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->startActivity(Landroid/content/Intent;)V

    .line 429
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 421
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->startActivity(Landroid/content/Intent;)V

    .line 422
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 424
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCurClickId:I

    if-ne v1, v2, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->doShareCourseReport()V

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCurClickId:I

    goto :goto_0
.end method

.method private initUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 124
    const v0, 0x7f090533

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourseFinishState:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourseFinishState:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5b8c\u6210 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cur:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->tot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f090172

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->courseBgIv:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f090477

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->bgcolor:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 128
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->bg:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    const-string v1, "?imageMogr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    const-string v1, "qiniu.jiliguala.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?imageMogr2/thumbnail/640x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->url:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->courseBgIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    const v0, 0x7f090558

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f090559

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->coursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->coursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->updateData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->coursePagerAdapter:Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 172
    const v0, 0x7f09055a

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCpi:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCpi:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCpi:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCpi:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 192
    const v0, 0x7f0901bd

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0904e4

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->bgcolor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->finish()V

    .line 301
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->overridePendingTransition(II)V

    .line 302
    return-void
.end method

.method public onChildGained()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->handleUnLoginAndNoBabyThenShareCourseReport()V

    .line 462
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 204
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 206
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->onBackPressed()V

    goto :goto_0

    .line 215
    :sswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->link:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 218
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    move-result-object v0

    .line 219
    .local v0, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x7f0901bd -> :sswitch_1
        0x7f0904e4 -> :sswitch_2
        0x7f090558 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCourseReportShareChosen(Z)V
    .locals 1
    .param p1, "unitShareReport"    # Z

    .prologue
    .line 480
    const v0, 0x7f0904d5

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCurClickId:I

    .line 481
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->handleUnLoginAndNoBabyThenShareCourseReport()V

    .line 482
    return-void
.end method

.method public onCourseShareChosen()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->doShareCourseShare()V

    .line 476
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 80
    const-string v1, "COURSE_OBJ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 81
    const-string v1, "KEY_ENTER_INDEX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->index:I

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->subs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->finish()V

    .line 101
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->addEventObserver()V

    .line 102
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_2
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->initUI()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mIsDestroyed:Z

    .line 470
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 471
    return-void
.end method

.method public onLoginSucceed()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->handleUnLoginAndNoBabyThenShareCourseReport()V

    .line 457
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v0, "COURSE_OBJ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->initUI()V

    .line 111
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "COURSE_OBJ"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->mCourse:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    return-void
.end method

.method public onShareCourse()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->doShareCourseShare()V

    .line 319
    return-void
.end method

.method public onStartCourse()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->taskVp:Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$4;-><init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public onSubCourseFinished(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "courseid"    # Ljava/lang/String;
    .param p3, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method
