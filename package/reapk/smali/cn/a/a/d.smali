.class public Lcn/a/a/d;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static b:Z

.field public static c:F


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcn/a/a/d;->b:Z

    .line 274
    const v0, 0x3727c5ac    # 1.0E-5f

    sput v0, Lcn/a/a/d;->c:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/a/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "targetWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcn/a/a/b;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/a/a/d;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/a/a/b;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "targetWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcn/a/a/b;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lcn/a/a/d;->e:F

    .line 41
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcn/a/a/d;->f:F

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcn/a/a/d;->g:I

    .line 44
    const-string v0, "SmoothHandler"

    iput-object v0, p0, Lcn/a/a/d;->h:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/a/a/d;->i:Z

    .line 106
    iput-object p1, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/a/a/b;

    invoke-interface {v0}, Lcn/a/a/b;->getPercent()F

    move-result v0

    iput v0, p0, Lcn/a/a/d;->d:F

    .line 108
    invoke-direct {p0}, Lcn/a/a/d;->d()V

    .line 109
    return-void
.end method

.method private a(FF)J
    .locals 9
    .param p1, "realPercentDelta"    # F
    .param p2, "desiredPercentDelta"    # F

    .prologue
    const/4 v8, 0x1

    .line 245
    iget-wide v4, p0, Lcn/a/a/d;->k:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 246
    iget v1, p0, Lcn/a/a/d;->g:I

    int-to-long v4, v1

    .line 266
    :goto_0
    return-wide v4

    .line 249
    :cond_0
    sub-float v1, p1, p2

    sget v4, Lcn/a/a/d;->c:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 250
    iget v1, p0, Lcn/a/a/d;->g:I

    int-to-long v4, v1

    goto :goto_0

    .line 254
    :cond_1
    iget-boolean v1, p0, Lcn/a/a/d;->n:Z

    if-nez v1, :cond_2

    .line 255
    iput-boolean v8, p0, Lcn/a/a/d;->n:Z

    .line 256
    const-string v1, "SmoothHandler"

    const-string v4, "Occur Accuracy Problem in %s, (real percent delta is %f, but desired percent delta is %f), so we use delay to handle the temporary duration, as result the processing will not smooth"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 260
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 257
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    sub-float v0, p1, p2

    .line 265
    .local v0, "delta":F
    div-float v1, v0, p2

    iget-wide v4, p0, Lcn/a/a/d;->m:J

    long-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 266
    .local v2, "remedyDelayMillis":J
    iget v1, p0, Lcn/a/a/d;->g:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Lcn/a/a/d;->e()V

    .line 141
    iput-boolean v0, p0, Lcn/a/a/d;->i:Z

    .line 142
    invoke-virtual {p0, v0}, Lcn/a/a/d;->removeMessages(I)V

    .line 143
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 216
    iget v0, p0, Lcn/a/a/d;->g:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/a/a/d;->m:J

    .line 217
    iput-wide v2, p0, Lcn/a/a/d;->j:J

    .line 218
    iput-wide v2, p0, Lcn/a/a/d;->k:J

    .line 219
    iput-wide v2, p0, Lcn/a/a/d;->l:J

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/a/a/d;->n:Z

    .line 221
    return-void
.end method

.method private e(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/a/a/d;->i:Z

    .line 167
    iget-object v0, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/a/a/b;

    invoke-interface {v0, p1}, Lcn/a/a/b;->setPercent(F)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/a/a/d;->i:Z

    goto :goto_0
.end method

.method private f(F)F
    .locals 14
    .param p1, "currentPercent"    # F

    .prologue
    const-wide/16 v12, 0x1

    .line 224
    iget-wide v8, p0, Lcn/a/a/d;->k:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 225
    iget v0, p0, Lcn/a/a/d;->f:F

    .line 241
    :goto_0
    return v0

    .line 230
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/a/a/d;->j:J

    sub-long v6, v8, v10

    .line 231
    .local v6, "usedDuration":J
    iget-wide v2, p0, Lcn/a/a/d;->l:J

    .line 233
    .local v2, "lastRemainDurationMillis":J
    iget-wide v8, p0, Lcn/a/a/d;->k:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lcn/a/a/d;->l:J

    .line 234
    iget-wide v8, p0, Lcn/a/a/d;->l:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcn/a/a/d;->m:J

    .line 236
    iget-wide v8, p0, Lcn/a/a/d;->l:J

    iget-wide v10, p0, Lcn/a/a/d;->m:J

    div-long/2addr v8, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 237
    .local v4, "splitByDelay":J
    iget v8, p0, Lcn/a/a/d;->d:F

    sub-float v1, v8, p1

    .line 239
    .local v1, "percentDelta":F
    long-to-float v8, v4

    div-float v0, v1, v8

    .line 241
    .local v0, "internalPercent":F
    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcn/a/a/d;->e:F

    return v0
.end method

.method public a(F)V
    .locals 4
    .param p1, "minInternalPercent"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    const-string v3, "the min internal percent must more than 0"

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 59
    const-string v3, "the min internal percent must less than 1"

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    const-string v0, "the min internal percent must more than the smooth internal percent"

    iget v3, p0, Lcn/a/a/d;->f:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 62
    iput p1, p0, Lcn/a/a/d;->e:F

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v1, v2

    .line 60
    goto :goto_2
.end method

.method public a(FJ)V
    .locals 8
    .param p1, "percent"    # F
    .param p2, "durationMillis"    # J

    .prologue
    const/4 v6, 0x0

    .line 184
    iget-object v1, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    sget-boolean v1, Lcn/a/a/d;->b:Z

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "SmoothHandler"

    const-string v2, "start loopSmooth aimPercent(%f) durationMillis(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcn/a/a/d;->d:F

    .line 191
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 190
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    iget-object v1, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/a/a/b;

    .line 196
    .local v0, "target":Lcn/a/a/b;
    iget v1, p0, Lcn/a/a/d;->d:F

    invoke-direct {p0, v1}, Lcn/a/a/d;->e(F)V

    .line 197
    invoke-direct {p0}, Lcn/a/a/d;->d()V

    .line 199
    iput p1, p0, Lcn/a/a/d;->d:F

    .line 201
    iget v1, p0, Lcn/a/a/d;->d:F

    invoke-interface {v0}, Lcn/a/a/b;->getPercent()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/a/a/d;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 202
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/a/a/d;->j:J

    .line 206
    iput-wide p2, p0, Lcn/a/a/d;->k:J

    .line 207
    iput-wide p2, p0, Lcn/a/a/d;->l:J

    .line 209
    :cond_3
    invoke-virtual {p0, v6}, Lcn/a/a/d;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 211
    :cond_4
    invoke-direct {p0, p1}, Lcn/a/a/d;->e(F)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .param p1, "smoothIncreaseDelayMillis"    # I

    .prologue
    .line 91
    const-string v1, "the delay of increase duration must more than 0"

    iget v0, p0, Lcn/a/a/d;->e:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 92
    iput p1, p0, Lcn/a/a/d;->g:I

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/a/a/d;->f:F

    return v0
.end method

.method public b(F)V
    .locals 8
    .param p1, "smoothInternalPercent"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    const-string v3, "the smooth internal percent must more than 0"

    iget v0, p0, Lcn/a/a/d;->e:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 77
    const-string v3, "the smooth internal percent must less than 0.5"

    iget v0, p0, Lcn/a/a/d;->e:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 78
    const-string v0, "the smooth internal percent must less than the min internal percent"

    iget v3, p0, Lcn/a/a/d;->e:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 80
    iput p1, p0, Lcn/a/a/d;->f:F

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v1, v2

    .line 78
    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/a/a/d;->g:I

    return v0
.end method

.method public c(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 154
    iget-boolean v0, p0, Lcn/a/a/d;->i:Z

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/a/a/d;->i:Z

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcn/a/a/d;->d:F

    goto :goto_0
.end method

.method public d(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 172
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcn/a/a/d;->a(FJ)V

    .line 173
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget-object v4, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lcn/a/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/a/a/b;

    .line 120
    .local v3, "target":Lcn/a/a/b;
    invoke-interface {v3}, Lcn/a/a/b;->getPercent()F

    move-result v0

    .line 121
    .local v0, "currentPercent":F
    invoke-direct {p0, v0}, Lcn/a/a/d;->f(F)F

    move-result v1

    .line 122
    .local v1, "desiredPercentDelta":F
    add-float v4, v0, v1

    iget v5, p0, Lcn/a/a/d;->d:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcn/a/a/d;->e(F)V

    .line 123
    invoke-interface {v3}, Lcn/a/a/b;->getPercent()F

    move-result v4

    sub-float v2, v4, v0

    .line 126
    .local v2, "realPercentDelta":F
    invoke-interface {v3}, Lcn/a/a/b;->getPercent()F

    move-result v4

    iget v5, p0, Lcn/a/a/d;->d:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    invoke-interface {v3}, Lcn/a/a/b;->getPercent()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    .line 127
    invoke-interface {v3}, Lcn/a/a/b;->getPercent()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    iget v4, p0, Lcn/a/a/d;->d:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 128
    :cond_2
    sget-boolean v4, Lcn/a/a/d;->b:Z

    if-eqz v4, :cond_3

    .line 129
    const-string v4, "SmoothHandler"

    const-string v5, "finish aimPercent(%f) durationMillis(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcn/a/a/d;->d:F

    .line 130
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-wide v8, p0, Lcn/a/a/d;->k:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 129
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    invoke-direct {p0}, Lcn/a/a/d;->d()V

    goto :goto_0

    .line 136
    :cond_4
    invoke-direct {p0, v2, v1}, Lcn/a/a/d;->a(FF)J

    move-result-wide v4

    invoke-virtual {p0, v8, v4, v5}, Lcn/a/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
