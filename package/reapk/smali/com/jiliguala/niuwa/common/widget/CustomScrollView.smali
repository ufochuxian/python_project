.class public Lcom/jiliguala/niuwa/common/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->g:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    .prologue
    .line 12
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->f:I

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->f:I

    return p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/CustomScrollView;)Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->e:Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 89
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b:F

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a:F

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->c:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->d:F

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 95
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 96
    .local v1, "curY":F
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->c:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a:F

    .line 97
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->d:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b:F

    .line 98
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->c:F

    .line 99
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->d:F

    .line 100
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->a:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->b:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 101
    const/4 v2, 0x0

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->e:Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->e:Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->f:I

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;->a(I)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->g:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollListener(Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CustomScrollView;->e:Lcom/jiliguala/niuwa/common/widget/CustomScrollView$a;

    .line 61
    return-void
.end method
