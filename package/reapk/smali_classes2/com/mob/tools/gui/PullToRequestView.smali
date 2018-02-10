.class public Lcom/mob/tools/gui/PullToRequestView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:J = 0x3e8L


# instance fields
.field private b:Lcom/mob/tools/gui/d;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Runnable;

.field private n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->f()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->f()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->f()V

    .line 43
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 203
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->i()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/mob/tools/gui/PullToRequestView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestView$1;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->m:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->n:J

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    .line 224
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/d;->g()V

    .line 227
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRequestView;->n:J

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    .line 245
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/d;->h()V

    .line 248
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 253
    invoke-virtual {p0, v0, v0}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 254
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    .line 255
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/d;->i()V

    .line 258
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/mob/tools/gui/PullToRequestView;->n:J

    sub-long v2, v0, v4

    .line 264
    .local v2, "delta":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->m:Ljava/lang/Runnable;

    sub-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lcom/mob/tools/gui/PullToRequestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/mob/tools/gui/PullToRequestView;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/PullToRequestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 214
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 215
    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->g()V

    .line 219
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->k:Z

    .line 274
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 235
    iget v0, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    neg-int v0, v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 236
    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->h()V

    .line 240
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->l:Z

    .line 279
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->k:Z

    .line 284
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 94
    .local v0, "curY":F
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    packed-switch v1, :pswitch_data_1

    .line 112
    :pswitch_2
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-lez v1, :cond_6

    .line 113
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 114
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-gez v1, :cond_1

    .line 115
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 117
    :cond_1
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 118
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/d;->a(I)V

    .line 121
    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 153
    :cond_3
    :goto_1
    iput v0, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    goto :goto_0

    .line 96
    :pswitch_3
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 97
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-gez v1, :cond_4

    .line 98
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 100
    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 101
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 102
    goto :goto_1

    .line 104
    :pswitch_4
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 105
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-lez v1, :cond_5

    .line 106
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 108
    :cond_5
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 109
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 110
    goto :goto_1

    .line 122
    :cond_6
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-gez v1, :cond_9

    .line 123
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 124
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-lez v1, :cond_7

    .line 125
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 127
    :cond_7
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 128
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    if-eqz v1, :cond_8

    .line 129
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/d;->b(I)V

    .line 131
    :cond_8
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_1

    .line 132
    :cond_9
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    .line 133
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 135
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 136
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    if-eqz v1, :cond_a

    .line 137
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/d;->b(I)V

    .line 139
    :cond_a
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_1

    .line 141
    :cond_b
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->i:F

    sub-float v2, v0, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 144
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 145
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    if-eqz v1, :cond_c

    .line 146
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/d;->b(I)V

    .line 148
    :cond_c
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_1

    .line 157
    .end local v0    # "curY":F
    :pswitch_5
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->j:I

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 192
    :pswitch_6
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    neg-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 193
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    goto/16 :goto_0

    .line 159
    :pswitch_7
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    if-le v1, v2, :cond_e

    .line 160
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 161
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 162
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_d

    .line 163
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/d;->a(I)V

    .line 165
    :cond_d
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->g()V

    .line 166
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_0

    .line 167
    :cond_e
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    neg-int v2, v2

    if-ge v1, v2, :cond_10

    .line 168
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    neg-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 169
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 170
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_f

    .line 171
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/d;->b(I)V

    .line 173
    :cond_f
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRequestView;->h()V

    .line 174
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_0

    .line 175
    :cond_10
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, v3, v3}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    .line 177
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    if-eqz v1, :cond_11

    .line 178
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    if-lez v1, :cond_12

    .line 179
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v1, v3}, Lcom/mob/tools/gui/d;->a(I)V

    .line 184
    :cond_11
    :goto_2
    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    goto/16 :goto_0

    .line 181
    :cond_12
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    invoke-virtual {v1, v3}, Lcom/mob/tools/gui/d;->b(I)V

    goto :goto_2

    .line 188
    :pswitch_8
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    iput v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    .line 189
    iget v1, p0, Lcom/mob/tools/gui/PullToRequestView;->h:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->scrollTo(II)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 157
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public e()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestView;->l:Z

    .line 289
    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/d;)V
    .locals 9
    .param p1, "adapter"    # Lcom/mob/tools/gui/d;

    .prologue
    const/4 v4, -0x1

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 54
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView;->b:Lcom/mob/tools/gui/d;

    .line 55
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestView;->removeAllViews()V

    .line 57
    invoke-virtual {p1}, Lcom/mob/tools/gui/d;->e()Lcom/mob/tools/gui/i;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->d:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "lpBody":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->d:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p1}, Lcom/mob/tools/gui/d;->d()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->c:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->c:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->c:Landroid/view/View;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    .line 68
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, "lpHead":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    neg-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->c:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p1}, Lcom/mob/tools/gui/d;->f()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->e:Landroid/view/View;

    .line 76
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->e:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->e:Landroid/view/View;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 78
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/gui/PullToRequestView;->g:I

    .line 79
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "lpFooter":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget v3, p0, Lcom/mob/tools/gui/PullToRequestView;->f:I

    neg-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 84
    iget-object v3, p0, Lcom/mob/tools/gui/PullToRequestView;->e:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method
