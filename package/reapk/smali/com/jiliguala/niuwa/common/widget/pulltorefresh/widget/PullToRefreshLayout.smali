.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$a;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "PullToRefreshLayout"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field private static final l:I = 0x190


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/view/View;

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Landroid/os/Handler;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

.field private U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private aa:Z

.field private ab:Z

.field public j:F

.field public k:F

.field private m:I

.field private n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

.field private u:Z

.field private v:Z

.field private w:F

.field private x:Landroid/view/animation/RotateAnimation;

.field private y:Landroid/view/animation/RotateAnimation;

.field private z:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v4, 0x43480000    # 200.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 52
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->k:F

    .line 54
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    .line 60
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    .line 62
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    .line 64
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    .line 67
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->u:Z

    .line 69
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->v:Z

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->w:F

    .line 102
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->M:Z

    .line 103
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->N:Z

    .line 104
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->O:Z

    .line 105
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->P:Z

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$f;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->Q:Landroid/os/Handler;

    .line 140
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->Q:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    .line 141
    const v2, 0x7f01001c

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/RotateAnimation;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->x:Landroid/view/animation/RotateAnimation;

    .line 142
    const v2, 0x7f01001b

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/RotateAnimation;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->y:Landroid/view/animation/RotateAnimation;

    .line 143
    const v2, 0x7f01001f

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/RotateAnimation;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->z:Landroid/view/animation/RotateAnimation;

    .line 145
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 146
    .local v1, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->x:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v2, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->z:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v2, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 151
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b016f

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    .line 153
    const v2, 0x7f0b013d

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    .line 154
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a(J)V

    .line 233
    return-void
.end method

.method private c(I)V
    .locals 7
    .param p1, "to"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    .line 324
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->aa:Z

    .line 327
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->ab:Z

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->y:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->D:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->E:Landroid/widget/TextView;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->y:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    const v1, 0x7f0f017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-interface {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->b(Landroid/view/View;I)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->E:Landroid/widget/TextView;

    const v1, 0x7f0f0198

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->x:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-interface {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->c(Landroid/view/View;I)V

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->C:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->z:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->E:Landroid/widget/TextView;

    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 367
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-interface {v0, v1, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->b(Landroid/view/View;I)V

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    const v1, 0x7f0f0197

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->x:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 378
    :pswitch_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-interface {v0, v1, v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->c(Landroid/view/View;I)V

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->z:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 392
    :pswitch_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->C:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->M:Z

    .line 403
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->N:Z

    .line 404
    return-void
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->D:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    const v1, 0x7f090412

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    const v1, 0x7f09051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->E:Landroid/widget/TextView;

    .line 578
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    const v1, 0x7f09043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->C:Landroid/view/View;

    .line 579
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    const v1, 0x7f09051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->D:Landroid/view/View;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    const v1, 0x7f0902ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    .line 585
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->H:Landroid/view/View;

    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    .line 588
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c()V

    return-void
.end method

.method static synthetic h(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    return v0
.end method

.method static synthetic i(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    return v0
.end method

.method static synthetic k(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    return v0
.end method

.method static synthetic l(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    return-object v0
.end method

.method static synthetic m(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    return v0
.end method

.method static synthetic n(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 555
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$a;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;)V

    .line 557
    .local v0, "task":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$a;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 558
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "refreshResult"    # I

    .prologue
    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    neg-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    .line 566
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->requestLayout()V

    .line 567
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    .line 571
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 5
    .param p1, "refreshResult"    # I

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->d(Landroid/view/View;I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->H:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 313
    :cond_2
    :goto_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 315
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;->sendEmptyMessageDelayed(IJ)Z

    .line 320
    :goto_1
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->J:Landroid/widget/TextView;

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->I:Landroid/view/View;

    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 317
    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 318
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c()V

    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 548
    return v9

    .line 429
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->o:F

    .line 430
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->o:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->p:F

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->t:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$b;->a()V

    .line 432
    iput v10, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->L:I

    .line 433
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->d()V

    goto :goto_0

    .line 438
    :pswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->L:I

    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    .line 442
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->aa:Z

    if-nez v0, :cond_1

    .line 443
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->aa:Z

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-interface {v0, v1, v9}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->a(Landroid/view/View;I)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    invoke-interface {v0, v1, v2, v9}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->a(Landroid/view/View;FI)V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    .line 451
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->ab:Z

    if-nez v0, :cond_3

    .line 452
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->ab:Z

    .line 453
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-interface {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->a(Landroid/view/View;I)V

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->a(Landroid/view/View;FI)V

    .line 459
    :cond_4
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->L:I

    if-nez v0, :cond_13

    .line 460
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->M:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->O:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 463
    :cond_5
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->p:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->w:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 464
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_6

    .line 465
    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 466
    iput-boolean v10, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->M:Z

    .line 467
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->N:Z

    .line 469
    :cond_6
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 470
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    .line 471
    :cond_7
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-ne v0, v3, :cond_8

    .line 473
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->v:Z

    .line 493
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->p:F

    .line 495
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->w:F

    .line 496
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_a

    .line 497
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->requestLayout()V

    .line 498
    :cond_a
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_14

    .line 499
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-eq v0, v9, :cond_b

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 501
    :cond_b
    invoke-direct {p0, v10}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 503
    :cond_c
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-nez v0, :cond_d

    .line 505
    invoke-direct {p0, v9}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 520
    :cond_d
    :goto_2
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 522
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 475
    :cond_e
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    cmpg-float v0, v0, v8

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->N:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->P:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-eq v0, v3, :cond_12

    .line 477
    :cond_f
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->p:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->w:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    .line 478
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_10

    .line 479
    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    .line 480
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->M:Z

    .line 481
    iput-boolean v10, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->N:Z

    .line 483
    :cond_10
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 484
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    .line 485
    :cond_11
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 487
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->v:Z

    goto/16 :goto_1

    .line 490
    :cond_12
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->d()V

    goto/16 :goto_1

    .line 492
    :cond_13
    iput v10, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->L:I

    goto/16 :goto_1

    .line 507
    :cond_14
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_d

    .line 509
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    neg-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-eq v0, v11, :cond_15

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 510
    :cond_15
    invoke-direct {p0, v10}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 513
    :cond_16
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    neg-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-nez v0, :cond_d

    .line 514
    invoke-direct {p0, v11}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    goto/16 :goto_2

    .line 526
    :pswitch_4
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_17

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    neg-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 529
    :cond_17
    iput-boolean v10, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->v:Z

    .line 531
    :cond_18
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-ne v0, v9, :cond_1a

    .line 532
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 534
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    if-eqz v0, :cond_19

    .line 535
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    .line 542
    :cond_19
    :goto_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c()V

    goto/16 :goto_0

    .line 536
    :cond_1a
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->m:I

    if-ne v0, v11, :cond_19

    .line 537
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(I)V

    .line 539
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    if-eqz v0, :cond_19

    .line 540
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    invoke-interface {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    goto :goto_3

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getPullableView()Landroid/view/View;
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 165
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;

    if-eqz v2, :cond_0

    .line 167
    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    .line 168
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    .line 171
    .end local v1    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 164
    .restart local v1    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 592
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->u:Z

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->getPullableView()Landroid/view/View;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->u:Z

    .line 596
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->e()V

    .line 597
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 598
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->r:F

    .line 599
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->s:F

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    .line 606
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 605
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 607
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->q:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->K:Landroid/view/View;

    .line 608
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 607
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 609
    return-void
.end method

.method public setCustomLoadmoreView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->F:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->removeView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->S:Landroid/view/View;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->W:Landroid/view/View;

    .line 225
    return-void
.end method

.method public setCustomRefreshView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->A:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->removeView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->R:Landroid/view/View;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->V:Landroid/view/View;

    .line 183
    return-void
.end method

.method public setOnLoadmoreProcessListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;)V
    .locals 0
    .param p1, "onPullProcessListener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->U:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    .line 629
    return-void
.end method

.method public setOnPullListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->n:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$c;

    .line 613
    return-void
.end method

.method public setOnRefreshProcessListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;)V
    .locals 0
    .param p1, "onPullProcessListener"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->T:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    .line 621
    return-void
.end method

.method public setPullDownEnable(Z)V
    .locals 0
    .param p1, "pullDownEnable"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->O:Z

    .line 412
    return-void
.end method

.method public setPullUpEnable(Z)V
    .locals 0
    .param p1, "pullUpEnable"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->P:Z

    .line 419
    return-void
.end method
