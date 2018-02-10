.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;"
    }
.end annotation


# static fields
.field private static final LV_MC_IDS:[Ljava/lang/String;

.field private static final LV_MC_TYPE:[Ljava/lang/String;

.field private static final LV_PH_IDS:[Ljava/lang/String;

.field private static final LV_PH_TYPE:[Ljava/lang/String;


# instance fields
.field actionCheckIn:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09001e
    .end annotation
.end field

.field babyContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090089
    .end annotation
.end field

.field babyIcon:Lcom/jiliguala/niuwa/common/widget/CircleImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09008d
    .end annotation
.end field

.field babyName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090091
    .end annotation
.end field

.field checkInTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090123
    .end annotation
.end field

.field continuousDays:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090165
    .end annotation
.end field

.field private currentHighAge:Z

.field giftIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090239
    .end annotation
.end field

.field largeLv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902b3
    .end annotation
.end field

.field largeTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902b4
    .end annotation
.end field

.field listenTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902d9
    .end annotation
.end field

.field private lvMcIndex:I

.field private lvPhIndex:I

.field private mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

.field mcReportContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09031d
    .end annotation
.end field

.field phLv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903d3
    .end annotation
.end field

.field phProgressTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903d4
    .end annotation
.end field

.field phonicsCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903dd
    .end annotation
.end field

.field phonicsProgress:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903df
    .end annotation
.end field

.field phonicsProgressContainer:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e0
    .end annotation
.end field

.field phonicsProgressText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e1
    .end annotation
.end field

.field phonicsReportContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e2
    .end annotation
.end field

.field phonicsReportTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e3
    .end annotation
.end field

.field phonicsStar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e4
    .end annotation
.end field

.field phonicsTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e5
    .end annotation
.end field

.field playTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903ee
    .end annotation
.end field

.field readTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09042b
    .end annotation
.end field

.field redDot:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090122
    .end annotation
.end field

.field reportCount:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09044c
    .end annotation
.end field

.field sentenceCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b3
    .end annotation
.end field

.field sentenceProgress:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b4
    .end annotation
.end field

.field sentenceProgressContainer:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b5
    .end annotation
.end field

.field sentenceProgressText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b6
    .end annotation
.end field

.field sentenceProgressTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b7
    .end annotation
.end field

.field sentenceStar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b8
    .end annotation
.end field

.field sentenceTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904b9
    .end annotation
.end field

.field songCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090501
    .end annotation
.end field

.field songCountTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090502
    .end annotation
.end field

.field studyRecord:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09052f
    .end annotation
.end field

.field toolsTitleTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09058a
    .end annotation
.end field

.field topBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090595
    .end annotation
.end field

.field totalDays:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0905a8
    .end annotation
.end field

.field watchTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090608
    .end annotation
.end field

.field wordCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090619
    .end annotation
.end field

.field wordProgress:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061b
    .end annotation
.end field

.field wordProgressContainer:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061c
    .end annotation
.end field

.field wordProgressText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061d
    .end annotation
.end field

.field wordProgressTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061e
    .end annotation
.end field

.field wordStar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061f
    .end annotation
.end field

.field wordTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090620
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "B1MC"

    aput-object v1, v0, v2

    const-string v1, "B2MC"

    aput-object v1, v0, v3

    const-string v1, "L1MC"

    aput-object v1, v0, v4

    const-string v1, "L2MC"

    aput-object v1, v0, v5

    const-string v1, "L3MC"

    aput-object v1, v0, v6

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_MC_TYPE:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0-1\u5c81"

    aput-object v1, v0, v2

    const-string v1, "1-2\u5c81"

    aput-object v1, v0, v3

    const-string v1, "Level 1"

    aput-object v1, v0, v4

    const-string v1, "Level 2"

    aput-object v1, v0, v5

    const-string v1, "Level 3"

    aput-object v1, v0, v6

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_MC_IDS:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "L1PH"

    aput-object v1, v0, v2

    const-string v1, "L2PH"

    aput-object v1, v0, v3

    const-string v1, "L3PH"

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_PH_TYPE:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Level 1"

    aput-object v1, v0, v2

    const-string v1, "Level 2"

    aput-object v1, v0, v3

    const-string v1, "Level 3"

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_PH_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 168
    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    .line 169
    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->refreshClockIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_MC_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    return p1
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_PH_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->chooseLv()V

    return-void
.end method

.method private addEventObserver()V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 216
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;)V

    .line 217
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 233
    return-void
.end method

.method private chooseLv()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    iget v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    if-gez v1, :cond_0

    move-object v1, v2

    :goto_0
    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    if-gez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;->requestServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    .line 195
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_MC_TYPE:[Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    aget-object v1, v1, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_PH_TYPE:[Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method private convertToMinute(I)I
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 366
    if-lez p1, :cond_0

    .line 367
    div-int/lit8 v0, p1, 0x3c

    add-int/lit8 v0, v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 446
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 445
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->layout()V

    .line 237
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->showOnAge()V

    .line 238
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->showUserInfo()V

    .line 239
    return-void
.end method

.method private layout()V
    .locals 6

    .prologue
    .line 253
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 254
    .local v1, "width":I
    div-int/lit8 v3, v1, 0x5

    mul-int/lit8 v2, v3, 0x6

    .line 255
    .local v2, "widthAll":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportCount:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 257
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportCount:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method

.method private refresh()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 200
    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvMcIndex:I

    .line 201
    iput v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->lvPhIndex:I

    .line 202
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->chooseLv()V

    .line 203
    return-void
.end method

.method private refreshClockIn()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

    .line 208
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->isClockin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->chooseLv()V

    .line 211
    :cond_1
    return-void
.end method

.method private reportAmplitude()V
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Report View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private reportRegisterAmplitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "continuousprogressStr"    # Ljava/lang/String;
    .param p2, "totalProgressStr"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v0, "mapAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Consecutive Check Ins"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "Total Check Ins"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/util/Map;)V

    .line 363
    return-void
.end method

.method private setProgress(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;F)V
    .locals 5
    .param p1, "titleView"    # Landroid/widget/TextView;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "progressView"    # Landroid/view/View;
    .param p4, "progress"    # F

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 351
    .local v1, "maxProgressSize":I
    int-to-float v3, v1

    mul-float v2, v3, p4

    .line 352
    .local v2, "progressHeight":F
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 353
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 354
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    return-void
.end method

.method private showOnAge()V
    .locals 3

    .prologue
    const v2, 0x7f0f01c5

    const v1, 0x7f0f01ae

    .line 242
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->currentHighAge:Z

    .line 243
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->currentHighAge:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCountTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCountTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showRedDot(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 482
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->redDot:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showUserInfo()V
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "curBabyAva":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyIcon:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 263
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->babyName:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private transRegister()V
    .locals 6

    .prologue
    .line 460
    sget-object v4, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 461
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 464
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 466
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 471
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 472
    .local v3, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 473
    const v4, 0x7f090479

    sget-object v5, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 474
    sget-object v4, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 478
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 479
    return-void

    .line 469
    .end local v3    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 476
    .restart local v3    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_2
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getUi()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;
    .locals 0

    .prologue
    .line 179
    return-object p0
.end method

.method public goMcDetail()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09031d
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->target:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public goPhDetail()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0903e2
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->target:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method public goRecord(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09052f
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    const v0, 0x7f01001d

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->overridePendingTransition(II)V

    .line 404
    return-void
.end method

.method public goRegister()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09001e
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->showRedDot(Z)V

    .line 456
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->transRegister()V

    .line 457
    return-void
.end method

.method public onBack()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->finish()V

    .line 409
    return-void
.end method

.method public onChooseMcLv(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902b3,
            0x7f0903d3
        }
    .end annotation

    .prologue
    const v6, 0x7f0902b3

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 414
    .local v2, "mId":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;

    move-result-object v3

    .line 415
    .local v3, "orCreateFragment":Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "typ"

    if-ne v2, v6, :cond_1

    const-string v4, "mc"

    :goto_0
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v5, "index"

    if-ne v2, v6, :cond_2

    sget-object v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_MC_IDS:[Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    .line 418
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 417
    :goto_1
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 421
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 423
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 428
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_2
    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;I)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->setOnItemClickListener(Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment$OnItemClickListener;)V

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->show(Landroid/support/v4/app/ag;)V

    .line 442
    return-void

    .line 416
    :cond_1
    const-string v4, "ph"

    goto :goto_0

    .line 418
    :cond_2
    sget-object v4, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->LV_PH_IDS:[Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phLv:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 426
    :cond_3
    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/ChooseLvFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->addEventObserver()V

    .line 187
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->setContentView(I)V

    .line 188
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 189
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->initView()V

    .line 190
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportAmplitude()V

    .line 191
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->refresh()V

    .line 192
    return-void
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;)V
    .locals 13
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->mData:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    .line 276
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

    if-eqz v8, :cond_0

    .line 277
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

    .line 278
    .local v0, "clockin":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;
    iget v8, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->continuousprogress:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "continuousprogressStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->continuousDays:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget v8, v0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->totalprogress:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "totalProgressStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->totalDays:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0, v1, v7}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->reportRegisterAmplitude(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->checkInTxt:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->isClockin()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "\u4eca\u65e5\u5df2\u6253\u5361"

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->actionCheckIn:Landroid/view/View;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->isClockin()Z

    move-result v8

    if-eqz v8, :cond_6

    const v8, 0x7f0800a4

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->giftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->isClockin()Z

    move-result v8

    if-eqz v8, :cond_7

    const v8, 0x7f0801a9

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->clockin:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;

    iget-boolean v8, v8, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;->notif:Z

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->showRedDot(Z)V

    .line 288
    .end local v0    # "clockin":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;
    .end local v1    # "continuousprogressStr":Ljava/lang/String;
    .end local v7    # "totalProgressStr":Ljava/lang/String;
    :cond_0
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;

    if-eqz v8, :cond_1

    .line 289
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;

    .line 290
    .local v3, "metric":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->words:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->currentHighAge:Z

    if-eqz v8, :cond_8

    .line 292
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->sentences:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->songs:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->phonics:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .end local v3    # "metric":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;
    :cond_1
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;

    if-eqz v8, :cond_2

    .line 301
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;

    .line 302
    .local v2, "mc":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressText:Landroid/widget/TextView;

    const v9, 0x7f0f0175

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->words:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allwords:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgress:Landroid/view/View;

    iget v11, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->words:I

    int-to-float v11, v11

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allwords:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->setProgress(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;F)V

    .line 304
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordStar:Landroid/widget/ImageView;

    iget v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->words:I

    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allwords:I

    if-ne v8, v10, :cond_9

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "number":Ljava/lang/String;
    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isBXMC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 307
    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 308
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    const v9, 0x7f0f011d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeTitle:Landroid/widget/TextView;

    const v9, 0x7f0f011f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressContainer:Landroid/view/ViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    :goto_5
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    const v9, 0x7f0f01c5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    const v9, 0x7f0f0175

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->songs:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsongs:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgress:Landroid/view/View;

    iget v11, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->songs:I

    int-to-float v11, v11

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsongs:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->setProgress(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;F)V

    .line 319
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceStar:Landroid/widget/ImageView;

    iget v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->songs:I

    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsongs:I

    if-ne v8, v10, :cond_b

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    .end local v2    # "mc":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;
    .end local v4    # "number":Ljava/lang/String;
    :cond_2
    :goto_7
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;

    if-eqz v8, :cond_3

    .line 332
    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;

    .line 335
    .local v5, "ph":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressText:Landroid/widget/TextView;

    const v9, 0x7f0f0175

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->phonics:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->allphonics:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phProgressTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgressText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsProgress:Landroid/view/View;

    iget v11, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->phonics:I

    int-to-float v11, v11

    iget v12, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->allphonics:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->setProgress(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;F)V

    .line 337
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phonicsStar:Landroid/widget/ImageView;

    iget v8, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->phonics:I

    iget v10, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->allphonics:I

    if-ne v8, v10, :cond_e

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->phLv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;->lv:Ljava/lang/String;

    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .end local v5    # "ph":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;
    :cond_3
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->record:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;

    if-eqz v8, :cond_4

    .line 341
    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;->record:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;

    .line 342
    .local v6, "record":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->listenTime:Landroid/widget/TextView;

    iget v9, v6, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;->listen:I

    invoke-direct {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->convertToMinute(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->watchTime:Landroid/widget/TextView;

    iget v9, v6, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;->watch:I

    invoke-direct {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->convertToMinute(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->playTime:Landroid/widget/TextView;

    iget v9, v6, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;->flashcard:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->readTime:Landroid/widget/TextView;

    iget v9, v6, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;->story:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .end local v6    # "record":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$RecordBean;
    :cond_4
    return-void

    .line 283
    .restart local v0    # "clockin":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;
    .restart local v1    # "continuousprogressStr":Ljava/lang/String;
    .restart local v7    # "totalProgressStr":Ljava/lang/String;
    :cond_5
    const-string v8, "\u6253\u5361\u5b66\u4e60"

    goto/16 :goto_0

    .line 284
    :cond_6
    const v8, 0x7f08009f

    goto/16 :goto_1

    .line 285
    :cond_7
    const v8, 0x7f0801a8

    goto/16 :goto_2

    .line 295
    .end local v0    # "clockin":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$Clockin;
    .end local v1    # "continuousprogressStr":Ljava/lang/String;
    .end local v7    # "totalProgressStr":Ljava/lang/String;
    .restart local v3    # "metric":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;
    :cond_8
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->songs:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->songCount:Landroid/widget/TextView;

    iget v9, v3, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;->sentences:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 304
    .end local v3    # "metric":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$MetricBean;
    .restart local v2    # "mc":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;
    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_4

    .line 312
    .restart local v4    # "number":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    const v9, 0x7f0f011e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeTitle:Landroid/widget/TextView;

    const v9, 0x7f0f0120

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressContainer:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 319
    :cond_b
    const/16 v8, 0x8

    goto/16 :goto_6

    .line 321
    :cond_c
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeTitle:Landroid/widget/TextView;

    const v9, 0x7f0f0121

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->largeLv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->wordProgressContainer:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 324
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    const v9, 0x7f0f01ae

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    const v9, 0x7f0f0175

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->sentences:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsentences:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgressText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceProgress:Landroid/view/View;

    iget v11, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->sentences:I

    int-to-float v11, v11

    iget v12, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsentences:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->setProgress(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;F)V

    .line 327
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;->sentenceStar:Landroid/widget/ImageView;

    iget v8, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->sentences:I

    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;->allsentences:I

    if-ne v8, v10, :cond_d

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    const/16 v8, 0x8

    goto :goto_9

    .line 337
    .end local v2    # "mc":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$McBean;
    .end local v4    # "number":Ljava/lang/String;
    .restart local v5    # "ph":Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean$PhBean;
    :cond_e
    const/16 v8, 0x8

    goto/16 :goto_8
.end method
