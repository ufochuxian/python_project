.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
.super Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mFolderName:Ljava/lang/String;

.field private mIndicator:Landroid/view/View;

.field private mIsTranslateUp:Z

.field private mRecord:Landroid/widget/ImageView;

.field private mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

.field private mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

.field private mVolume:Landroid/widget/ImageView;

.field private mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

.field private moveAnimatorSet:Lcom/nineoldandroids/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIsTranslateUp:Z

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->startIndicatorAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)Lcom/nineoldandroids/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    return-object v0
.end method

.method private getIconByVolume(D)I
    .locals 13
    .param p1, "volume"    # D

    .prologue
    const v0, 0x7f0801ca

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 156
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    cmpg-double v1, p1, v4

    if-gez v1, :cond_1

    .line 157
    const v0, 0x7f0801c7

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    cmpg-double v1, p1, v6

    if-gez v1, :cond_2

    .line 159
    const v0, 0x7f0801c8

    goto :goto_0

    .line 160
    :cond_2
    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    cmpg-double v1, p1, v8

    if-gez v1, :cond_3

    .line 161
    const v0, 0x7f0801c9

    goto :goto_0

    .line 162
    :cond_3
    cmpl-double v1, p1, v8

    if-ltz v1, :cond_4

    cmpg-double v1, p1, v10

    if-ltz v1, :cond_0

    .line 164
    :cond_4
    cmpl-double v1, p1, v10

    if-ltz v1, :cond_5

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    .line 167
    :cond_5
    const v0, 0x7f0803ca

    goto :goto_0
.end method

.method private isRecordSelected()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method private measureControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 153
    return-void
.end method

.method private openUpRecordUi()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x3d380000    # -100.0f

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolume:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/a;->h(Landroid/view/View;)Lcom/nineoldandroids/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v8, [F

    aput v5, v2, v6

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolume:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v8, [F

    aput v5, v2, v6

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 306
    return-void
.end method

.method private packUpRecordUi()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x3d420000    # -95.0f

    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolumeObjectAnim:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v8, [F

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolume:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v8, [F

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 339
    return-void
.end method

.method private relayoutRecord()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 185
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, -0x3d600000    # -80.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 187
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method private relayoutRecordBg()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, -0x3cb80000    # -200.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 179
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    return-void
.end method

.method private relayoutVolume()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, -0x3cfe0000    # -130.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 195
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private startIndicatorAnim()V
    .locals 8

    .prologue
    const/16 v6, 0x270f

    const/16 v5, 0xd

    const/4 v7, 0x1

    .line 104
    new-instance v4, Lcom/nineoldandroids/a/d;

    invoke-direct {v4}, Lcom/nineoldandroids/a/d;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    .line 106
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    .line 107
    .local v2, "xPath":[F
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    .line 108
    .local v3, "yPath":[F
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIndicator:Landroid/view/View;

    const-string v5, "translationX"

    invoke-static {v4, v5, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 109
    .local v0, "moveXTransition":Lcom/nineoldandroids/a/l;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIndicator:Landroid/view/View;

    const-string v5, "translationY"

    invoke-static {v4, v5, v3}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 111
    .local v1, "moveYTransition":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, v7}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 112
    invoke-virtual {v0, v6}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 113
    invoke-virtual {v1, v7}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 114
    invoke-virtual {v1, v6}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 116
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/nineoldandroids/a/a;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 117
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Lcom/nineoldandroids/a/d;->c(J)Lcom/nineoldandroids/a/d;

    .line 118
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 119
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    new-instance v5, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 141
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/d;->a()V

    .line 142
    return-void

    .line 106
    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x0
        -0x3ee00000    # -10.0f
        -0x3e600000    # -20.0f
        -0x3e100000    # -30.0f
        -0x3df40000    # -35.0f
        -0x3de00000    # -40.0f
        -0x3df40000    # -35.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private startRecord()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->hasStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->translateRecord()V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->startRecord()V

    .line 227
    :cond_0
    return-void
.end method

.method private stopRecord()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->translateRecord()V

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopRecord()V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeIcon(D)V
    .locals 0
    .param p1, "volume"    # D

    .prologue
    .line 386
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00d5

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f090604

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mVolume:Landroid/widget/ImageView;

    .line 79
    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIndicator:Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->playTapingMusic()V

    .line 207
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->toggleRecord()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f090291
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->onDetachedFromWindow()V

    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->onDetach()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->moveAnimatorSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onInteractTimeOut()V
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIsTranslateUp:Z

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->packUpRecordUi()V

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->stopRecordWhenTimeout()V

    .line 375
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->onWindowFocusChanged(Z)V

    .line 264
    if-nez p1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->isRecordSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->translateRecord()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->onWindowChanged(Z)V

    .line 272
    :cond_1
    return-void
.end method

.method public relayRecordControls()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public releaseSoundRes()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->releaseMediaPlayer()V

    .line 381
    :cond_0
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;)V
    .locals 3
    .param p1, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    invoke-direct {v0, v1, p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->initView()V

    .line 68
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->setListener()V

    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->measureControls()V

    .line 71
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mFolderName:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->setFolderName(Ljava/lang/String;)V

    .line 350
    return-object p0
.end method

.method public setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    .locals 1
    .param p1, "interactListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)V

    .line 344
    return-object p0
.end method

.method public stopRecordWhenTimeout()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mSpeakViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopRecordWhenTimeout()V

    .line 240
    :cond_0
    return-void
.end method

.method public toggleRecord()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->isRecordSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->startRecord()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->stopRecord()V

    goto :goto_0
.end method

.method public translateRecord()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIsTranslateUp:Z

    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->openUpRecordUi()V

    .line 256
    :goto_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIsTranslateUp:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->mIsTranslateUp:Z

    .line 257
    return-void

    :cond_1
    move v0, v2

    .line 249
    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->packUpRecordUi()V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 256
    goto :goto_2
.end method
