.class public Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;
    }
.end annotation


# static fields
.field private static final HTML_STYLE_PRE_AUDIO:Ljava/lang/String; = "\u603b\u5171\u542c\u4e86(\u5206\u949f)"

.field private static final HTML_STYLE_PRE_VIDEO:Ljava/lang/String; = "\u603b\u5171\u770b\u4e86(\u5206\u949f)"

.field private static final HTML_STYLE_SUFFIX:Ljava/lang/String; = "\u5206\u949f"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

.field private currentDate:Ljava/lang/String;

.field private currentMonth:Landroid/widget/TextView;

.field private day_c:I

.field private detailListAdapter:Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

.field private detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

.field private emptyView:Landroid/view/View;

.field private emptyViewTv:Landroid/widget/TextView;

.field private flipper:Landroid/widget/ViewFlipper;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

.field private gvFlag:I

.field private isDurningAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jumpMonth:I

.field private jumpYear:I

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mData:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private m_audio_target:I

.field private m_audio_total:I

.field private m_audios_date:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_audios_secs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_video_target:I

.field private m_video_total:I

.field private m_videos_date:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_videos_secs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private month_c:I

.field private nextMonth:Landroid/widget/ImageView;

.field private prevMonth:Landroid/widget/ImageView;

.field private requestEnd:J

.field private requestStart:J

.field private year_c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 58
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    .line 59
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpYear:I

    .line 68
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 69
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .line 70
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 71
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    .line 72
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->year_c:I

    .line 73
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->month_c:I

    .line 74
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentDate:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gvFlag:I

    .line 103
    new-instance v0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->isDurningAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gvFlag:I

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->enterNextMonth(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestEnd:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    return v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->isDurningAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->enterPrevMonth(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListAdapter:Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestStart:J

    return-wide v0
.end method

.method private addGridView()V
    .locals 9

    .prologue
    const/16 v7, 0x28

    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 182
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 185
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 186
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 187
    .local v1, "Width":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 189
    .local v0, "Height":I
    new-instance v5, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    .line 190
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setNumColumns(I)V

    .line 191
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v5, v7}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setColumnWidth(I)V

    .line 193
    const/16 v5, 0x2d0

    if-ne v1, v5, :cond_0

    const/16 v5, 0x500

    if-ne v0, v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v5, v7}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setColumnWidth(I)V

    .line 196
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setGravity(I)V

    .line 197
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v5, v8}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setVerticalSpacing(I)V

    .line 200
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v5, v8}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setHorizontalSpacing(I)V

    .line 201
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    new-instance v6, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$2;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    new-instance v6, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method private doServerRequest()V
    .locals 9

    .prologue
    .line 332
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "babyId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/f;->a()J

    move-result-wide v2

    .line 339
    .local v2, "ofst":J
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->a(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestStart:J

    .line 340
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->a(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestEnd:J

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v8

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestStart:J

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->requestEnd:J

    .line 348
    invoke-interface/range {v0 .. v7}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;JJJ)Lrx/e;

    move-result-object v0

    .line 349
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 350
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 351
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v0

    new-instance v4, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    .line 352
    invoke-virtual {v0, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 346
    invoke-virtual {v8, v0}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private enterNextMonth(I)V
    .locals 8
    .param p1, "gvFlag"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addGridView()V

    .line 153
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    .line 154
    new-instance v0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpYear:I

    iget v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->year_c:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->month_c:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentMonth:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addTextToTopTextView(Landroid/widget/TextView;)V

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f010017

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f010018

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 165
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->doServerRequest()V

    .line 166
    return-void
.end method

.method private enterPrevMonth(I)V
    .locals 8
    .param p1, "gvFlag"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addGridView()V

    .line 129
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    .line 130
    new-instance v0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpYear:I

    iget v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->year_c:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->month_c:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    add-int/lit8 p1, p1, 0x1

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentMonth:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addTextToTopTextView(Landroid/widget/TextView;)V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f010019

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f01001a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 143
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->doServerRequest()V

    .line 144
    return-void
.end method

.method private getCurrentDate()V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 267
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentDate:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->year_c:I

    .line 270
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->month_c:I

    .line 271
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    .line 272
    return-void
.end method


# virtual methods
.method public addTextToTopTextView(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, "textDate":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->getShowYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->getShowMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->isDurningAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->isDurningAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->finish()V

    .line 397
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->overridePendingTransition(II)V

    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 276
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getCurrentDate()V

    .line 279
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->setContentView(I)V

    .line 280
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Progress View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 285
    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/CustomListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

    .line 286
    new-instance v0, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListAdapter:Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListAdapter:Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    const v0, 0x7f0901dc

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyView:Landroid/view/View;

    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->detailListView:Lcom/jiliguala/niuwa/common/widget/CustomListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentMonth:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0903fa

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->prevMonth:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->prevMonth:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const v0, 0x7f090381

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->nextMonth:Landroid/widget/ImageView;

    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->nextMonth:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$a;-><init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 316
    const v0, 0x7f090212

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 320
    new-instance v0, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    iget v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpYear:I

    iget v5, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->year_c:I

    iget v6, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->month_c:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    .line 321
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addGridView()V

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->calV:Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomGirdView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->gridView:Lcom/jiliguala/niuwa/common/widget/CustomGirdView;

    invoke-virtual {v0, v1, v8}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->currentMonth:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addTextToTopTextView(Landroid/widget/TextView;)V

    .line 325
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v0, 0x7f090588

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u5b66\u4e60\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->doServerRequest()V

    .line 329
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 404
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 410
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 411
    const-string v0, "Progress View"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public updateText(I)V
    .locals 4
    .param p1, "tagInt"    # I

    .prologue
    const v3, 0x7f0f00c7

    const v2, 0x7f0f00c5

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    if-nez v0, :cond_3

    .line 249
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    if-ne p1, v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    if-le p1, v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 254
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->day_c:I

    if-ge p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 258
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    if-lez v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 260
    :cond_4
    iget v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->jumpMonth:I

    if-gez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->emptyViewTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
