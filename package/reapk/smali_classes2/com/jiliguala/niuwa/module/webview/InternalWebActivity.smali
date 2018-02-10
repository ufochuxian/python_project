.class public Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
.super Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;
    }
.end annotation


# static fields
.field public static final KEY_DISCUSS_LINK:Ljava/lang/String; = "key_disscuss_link"

.field public static final KEY_HIDE_SUSPENSION_SHARE:Ljava/lang/String; = "HIDE SUSPENSION SHARE"

.field public static final KEY_LANDSCAPE:Ljava/lang/String; = "KEY_LANDSCAPE"

.field public static final KEY_LESSON_TYPE:Ljava/lang/String; = "LESSON TYPE"

.field public static final KEY_NEED_DISSCUSS:Ljava/lang/String; = "key_need_more"

.field public static final KEY_NEED_OUTER_BROWSER:Ljava/lang/String; = "NEED_OUTER_BROWSER"

.field public static final KEY_PLAN:Ljava/lang/String; = "KEY PLAN"

.field public static final KEY_PURCHASE_SOURCE:Ljava/lang/String; = "KEY_PURCHASE_SOURCE"

.field public static final KEY_SHARE_COURSE_AGE:Ljava/lang/String; = "SHARE_COURSE_AGE"

.field public static final KEY_SHARE_COURSE_CAT:Ljava/lang/String; = "SHARE_COURSE_CAT"

.field public static final KEY_SHARE_DESC:Ljava/lang/String; = "SHARE_DESC"

.field public static final KEY_SHARE_RID:Ljava/lang/String; = "SHARE_RID"

.field public static final KEY_SHARE_THUMB:Ljava/lang/String; = "SHARE_THUMB"

.field public static final KEY_SHARE_TTL:Ljava/lang/String; = "SHARE_TTL"

.field public static final KEY_SHARE_TYPE:Ljava/lang/String; = "SHARE_TYPE"

.field public static final KEY_SHOW_DEFALUT_BACK:Ljava/lang/String; = "SHOW_DEFALUT_BACK"

.field public static final KEY_SHOW_SUSPENSION_:Ljava/lang/String; = "KEY_SHOW_SUSPENSION_"

.field public static final KEY_SUSPENSION_BACK_RECOURSE_ID:Ljava/lang/String; = "SUSPENSION_BACK_RECOURSE_ID"

.field public static final KEY_SUSPENSION_TOP_MARGIN:Ljava/lang/String; = "KEY_SHOW_SUSPENSION_TOP_MARGIN"

.field public static final KEY_URL:Ljava/lang/String; = "key_url"

.field private static final MSG_UPDATE_SHARE_ICON:I = 0x1000

.field public static final STORY_BOOK_SHARE_THUMB_URL:Ljava/lang/String; = "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private age:Ljava/lang/String;

.field private btnClose:Landroid/view/View;

.field private cat:Ljava/lang/String;

.field private centerProgressBar:Landroid/view/View;

.field private desc:Ljava/lang/String;

.field private discussLink:Ljava/lang/String;

.field private isLandscape:Z

.field protected lessonType:Ljava/lang/String;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mHandler:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;

.field private mIsHideSuspensionShare:Z

.field private mIsShowDefaultBack:Z

.field private mIsShowSuspension:Z

.field private mLessonId:Ljava/lang/String;

.field private mShareIv:Landroid/widget/ImageView;

.field private mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

.field private mSource:Ljava/lang/String;

.field private mSuspensionBackMarginTop:I

.field private mSuspensionBackResourceId:I

.field private mSuspensionBar:Landroid/widget/FrameLayout;

.field private mSuspensionShare:Landroid/widget/ImageView;

.field private mWebViewTitle:Ljava/lang/String;

.field needDiscuss:Z

.field private needOuterBrowser:Z

.field private popupWindow:Landroid/widget/PopupWindow;

.field private progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private rid:Ljava/lang/String;

.field private sharePlatformCounter:I

.field private sharetype:I

.field private switcher:I

.field private thmb:Ljava/lang/String;

.field private ttl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;-><init>()V

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 102
    iput v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    .line 107
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->testBindWx()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->doActitonBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsShowSuspension:Z

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionShare:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/h;

    .line 241
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$1;-><init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    .line 242
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 254
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 255
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$2;-><init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$3;-><init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    .line 256
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 284
    return-void
.end method

.method private convertSwitcher([Ljava/lang/String;)V
    .locals 3
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 434
    if-eqz p1, :cond_7

    array-length v2, p1

    if-lez v2, :cond_7

    .line 435
    if-eqz p1, :cond_7

    array-length v2, p1

    if-lez v2, :cond_7

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 437
    aget-object v0, p1, v1

    .line 438
    .local v0, "flag":Ljava/lang/String;
    const-string v2, "Circle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 440
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    .line 436
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const-string v2, "Friend"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 443
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 444
    :cond_2
    const-string v2, "QQ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 446
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 447
    :cond_3
    const-string v2, "Qzone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 449
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 450
    :cond_4
    const-string v2, "Browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 451
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 452
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 453
    :cond_5
    const-string v2, "Weibo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 455
    iget v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 456
    :cond_6
    const-string v2, "Any"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const v2, 0xffff

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 458
    const v2, 0x7fffffff

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    goto :goto_1

    .line 465
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method private dismissPop()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doActitonBack()V
    .locals 3

    .prologue
    .line 170
    iget v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 171
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1020

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->pressBack()V

    .line 175
    return-void
.end method

.method private initPopUp()V
    .locals 7

    .prologue
    const v6, 0x7f090030

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 406
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 407
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0136

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 408
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 409
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 410
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 411
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needOuterBrowser:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void

    .line 414
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const v7, 0x7f090014

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 304
    const v2, 0x7f0902e6

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 305
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 307
    const v2, 0x7f090402

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    .line 308
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    .local v0, "actionBack":Landroid/widget/ImageView;
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareIv:Landroid/widget/ImageView;

    .line 314
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 318
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 319
    const-string v2, "key_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    .line 320
    const-string v2, "key_need_more"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needDiscuss:Z

    .line 321
    const-string v2, "NEED_OUTER_BROWSER"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needOuterBrowser:Z

    .line 322
    const-string v2, "SHARE_THUMB"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    .line 323
    const-string v2, "SHARE_TTL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    .line 324
    const-string v2, "SHARE_DESC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    .line 325
    const-string v2, "SHARE_RID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->rid:Ljava/lang/String;

    .line 326
    const-string v2, "SHARE_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    .line 327
    const-string v2, "SHARE_COURSE_CAT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->cat:Ljava/lang/String;

    .line 328
    const-string v2, "KEY PLAN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mPlan:Ljava/lang/String;

    .line 329
    const-string v2, "SHARE_COURSE_AGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->age:Ljava/lang/String;

    .line 330
    const-string v2, "key_disscuss_link"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->discussLink:Ljava/lang/String;

    .line 331
    const-string v2, "SHOW_DEFALUT_BACK"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsShowDefaultBack:Z

    .line 332
    const-string v2, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsShowSuspension:Z

    .line 333
    const-string v2, "KEY_LANDSCAPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->isLandscape:Z

    .line 334
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->isLandscape:Z

    if-eqz v2, :cond_0

    .line 335
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 337
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->setRequestedOrientation(I)V

    .line 339
    :cond_0
    const-string v2, "LESSON TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    .line 340
    const-string v2, "HIDE SUSPENSION SHARE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsHideSuspensionShare:Z

    .line 341
    const-string v2, "SUSPENSION_BACK_RECOURSE_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackResourceId:I

    .line 342
    const-string v2, "KEY_SHOW_SUSPENSION_TOP_MARGIN"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackMarginTop:I

    .line 344
    :cond_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsShowDefaultBack:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0802c7

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->finish()V

    .line 351
    :cond_2
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needDiscuss:Z

    if-eqz v2, :cond_3

    .line 352
    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    const v2, 0x7f090025

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    :cond_3
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->btnClose:Landroid/view/View;

    .line 357
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->btnClose:Landroid/view/View;

    new-instance v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$4;-><init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->initPopUp()V

    .line 365
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->loadUrl(Ljava/lang/String;)V

    .line 367
    return-void

    .line 344
    :cond_4
    const v2, 0x7f0802d6

    goto :goto_0
.end method

.method private invokeShareFromJs(Lcom/jiliguala/niuwa/logic/network/json/ShareObj;)V
    .locals 18
    .param p1, "shareObj"    # Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    .prologue
    .line 468
    if-eqz p1, :cond_1

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v12, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->imageurl:Ljava/lang/String;

    .line 470
    .local v12, "thumbUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    sget-boolean v3, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v3, :cond_2

    const-string v12, "http://dev."

    .line 473
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->source:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSource:Ljava/lang/String;

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->lessonId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v13, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->linkurl:Ljava/lang/String;

    .line 480
    .local v13, "shareUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v15

    .line 482
    .local v15, "fm":Landroid/support/v4/app/ag;
    invoke-static {v15}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v2

    .line 484
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, v12, v13}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setShareUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSwitch(J)V

    .line 488
    invoke-virtual {v2, v15}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 563
    .end local v2    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v15    # "fm":Landroid/support/v4/app/ag;
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharePlatformCounter:I

    .line 565
    .end local v12    # "thumbUrl":Ljava/lang/String;
    .end local v13    # "shareUrl":Ljava/lang/String;
    :cond_1
    return-void

    .line 471
    .restart local v12    # "thumbUrl":Ljava/lang/String;
    :cond_2
    const-string v12, "http://jiliguala.com/favicon/favicon-96x96.png"

    goto :goto_0

    .line 490
    .restart local v13    # "shareUrl":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 491
    .local v16, "index":I
    packed-switch v16, :pswitch_data_0

    goto :goto_1

    .line 494
    :pswitch_0
    const-string v3, "Circle"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->reportShareClickAmplitude(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v3

    if-nez v3, :cond_4

    .line 496
    const-string v3, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_4
    const v3, 0x7f0904dd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSource:Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :pswitch_1
    const-string v3, "Friend"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->reportShareClickAmplitude(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 507
    const-string v3, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :cond_5
    const v3, 0x7f0904e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSource:Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v3

    if-nez v3, :cond_6

    .line 517
    const-string v3, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 520
    :cond_6
    const v3, 0x7f0904de

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v14, ""

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 527
    :pswitch_3
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v3

    if-nez v3, :cond_7

    .line 528
    const-string v3, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 531
    :cond_7
    const v3, 0x7f0904df

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v14, ""

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 537
    :pswitch_4
    const v3, 0x7f0904dc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v14, ""

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 541
    :pswitch_5
    const v3, 0x7f0903b1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v14, ""

    move-object/from16 v11, p0

    invoke-static/range {v3 .. v14}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 546
    :pswitch_6
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v3

    if-nez v3, :cond_8

    .line 547
    const-string v3, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\u5ba2\u6237\u7aef"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    :cond_8
    new-instance v17, Landroid/content/Intent;

    const-class v3, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v17, "intent":Landroid/content/Intent;
    const-string v3, "key_abst"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v3, "key_thmb_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v3, "key_title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v3, "key_plat"

    const v4, 0x7f0904e3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string v3, "key_type"

    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v3, "share_url_thmb"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    const v3, 0x7f01001d

    const v4, 0x7f010013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private reportShareClickAmplitude(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v1, "Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mLessonId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 573
    return-void
.end method

.method private reportShareSuccessAmplitude()V
    .locals 3

    .prologue
    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "Type"

    const-string v2, "Friend"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Share Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 580
    return-void
.end method

.method private reportWebViewEvent()V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Web View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 403
    return-void
.end method

.method private testBindWx()V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->goToMobilePage()V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v1, "\u8bf7\u7ed1\u5b9a\u5fae\u4fe1\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public brideGoBack()V
    .locals 0

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onBackPressed()V

    .line 643
    return-void
.end method

.method public dealWriteResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 613
    return-void
.end method

.method public doShare(Ljava/lang/String;)V
    .locals 1
    .param p1, "shareJson"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    if-eqz v0, :cond_0

    .line 602
    const/high16 v0, -0x10000000

    iput v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->switcher:I

    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;->channels:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->convertSwitcher([Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->invokeShareFromJs(Lcom/jiliguala/niuwa/logic/network/json/ShareObj;)V

    .line 608
    :cond_0
    return-void
.end method

.method protected getPurchaseSource()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 393
    const-string v0, "Member Purchase"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Member Renewal"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    .line 396
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRevenueType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "MC"

    .line 378
    :goto_0
    return-object v0

    .line 373
    :cond_0
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "Phonics"

    goto :goto_0

    .line 375
    :cond_1
    const-string v0, "Member Purchase"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Member Renewal"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    :cond_2
    const-string v0, "Member"

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "MC"

    .line 388
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "Phonics"

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->lessonType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected goToMobilePage()V
    .locals 3

    .prologue
    .line 298
    const-string v1, "\u8bf7\u8865\u5145\u624b\u673a\u53f7\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 299
    const v1, 0x7f0f0183

    const-string v2, "PURCHASE_GET_CHARGE"

    invoke-static {p0, v1, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->dismissPop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->goBack()V

    goto :goto_0

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->doActitonBack()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onBackPressed()V

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 132
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 134
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    const-string v2, "\u5434\u654f\u5170\u4e0e\u53fd\u91cc\u5471\u5566\u4e00\u8d77\u6253\u9020\u7684\u7ed8\u672c\u8bfe\u7a0b\uff0c\u4e0d\u6101\u5b69\u5b50\u6ca1\u4e66\u770b\u4e86"

    const-string v3, ""

    const-string v4, ""

    iget v5, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/l/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setShareUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 140
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v7, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Report Share Dialog"

    invoke-virtual {v1, v2, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 143
    .end local v7    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->rid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->rid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->cat:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->age:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setClassData(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 148
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 149
    .restart local v7    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->rid:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Report Share Dialog"

    invoke-virtual {v1, v2, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 154
    .end local v7    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mShareObj:Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->invokeShareFromJs(Lcom/jiliguala/niuwa/logic/network/json/ShareObj;)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v6    # "fm":Landroid/support/v4/app/ag;
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->discussLink:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090025 -> :sswitch_2
        0x7f090038 -> :sswitch_1
        0x7f090540 -> :sswitch_0
        0x7f090541 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    new-instance v4, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;-><init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mHandler:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;

    .line 207
    const v4, 0x7f0b0032

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->setContentView(I)V

    .line 208
    const v4, 0x7f090626

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 210
    .local v1, "parent":Landroid/widget/FrameLayout;
    invoke-super {p0, v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initWebView(Landroid/view/View;)V

    .line 211
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->initUI()V

    .line 213
    const v4, 0x7f090591

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 214
    .local v3, "topBar":Landroid/widget/RelativeLayout;
    const v4, 0x7f090542

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBar:Landroid/widget/FrameLayout;

    .line 216
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsShowSuspension:Z

    if-eqz v4, :cond_3

    .line 217
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBar:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    iget v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackMarginTop:I

    if-lez v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBar:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackMarginTop:I

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBar:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v4, 0x7f090540

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 225
    .local v2, "suspensionBtn":Landroid/widget/ImageView;
    iget v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackResourceId:I

    if-nez v4, :cond_1

    const v4, 0x7f0802d5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    const v4, 0x7f090541

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionShare:Landroid/widget/ImageView;

    .line 227
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionShare:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mIsHideSuspensionShare:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionShare:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .end local v2    # "suspensionBtn":Landroid/widget/ImageView;
    :goto_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->addEventObserver()V

    .line 236
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->reportWebViewEvent()V

    .line 237
    return-void

    .line 225
    .restart local v2    # "suspensionBtn":Landroid/widget/ImageView;
    :cond_1
    iget v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBackResourceId:I

    goto :goto_0

    :cond_2
    move v4, v6

    .line 227
    goto :goto_1

    .line 231
    .end local v2    # "suspensionBtn":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mSuspensionBar:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 633
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x8

    .line 661
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->loadFinished:Z

    .line 669
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->btnClose:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 670
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->btnClose:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_3
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->loadFinished:Z

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->progressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->loadFinished:Z

    if-nez v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->centerProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mWebViewTitle:Ljava/lang/String;

    .line 678
    const v1, 0x7f09057a

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 679
    .local v0, "titleTv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 680
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->loadUrl(Ljava/lang/String;)V

    .line 690
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "key_url"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "key_need_more"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needDiscuss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string v0, "NEED_OUTER_BROWSER"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->needOuterBrowser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v0, "SHARE_THUMB"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->thmb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "SHARE_TTL"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->ttl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "SHARE_DESC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "SHARE_RID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->rid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "SHARE_TYPE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->sharetype:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 628
    return-void
.end method

.method public showRightTopBtn(Ljava/lang/String;)V
    .locals 3
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mHandler:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 593
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 594
    return-void

    .line 592
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showRightTopBtn(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 584
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->mHandler:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 586
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    return-void

    .line 585
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 618
    return-void
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 638
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method
