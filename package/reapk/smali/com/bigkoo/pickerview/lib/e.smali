.class final Lcom/bigkoo/pickerview/lib/e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;I)V
    .locals 1
    .param p1, "loopview"    # Lcom/bigkoo/pickerview/lib/WheelView;
    .param p2, "offset"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 14
    iput p2, p0, Lcom/bigkoo/pickerview/lib/e;->c:I

    .line 15
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/16 v6, 0xbb8

    const/4 v5, 0x1

    .line 21
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 22
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->c:I

    iput v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    .line 25
    :cond_0
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    .line 27
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    if-nez v3, :cond_1

    .line 28
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    if-gez v3, :cond_2

    .line 29
    const/4 v3, -0x1

    iput v3, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    .line 35
    :cond_1
    :goto_0
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v5, :cond_3

    .line 36
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    .line 37
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    :goto_1
    return-void

    .line 31
    :cond_2
    iput v5, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    goto :goto_0

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v4, v4, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    iget v5, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    .line 42
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-boolean v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez v3, :cond_5

    .line 43
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v1, v3, Lcom/bigkoo/pickerview/lib/WheelView;->m:F

    .line 44
    .local v1, "itemHeight":F
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v2, v3, v1

    .line 45
    .local v2, "top":F
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v4, v4, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v3, v1

    .line 46
    .local v0, "bottom":F
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_5

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v4, v4, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    iget v5, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:I

    .line 48
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    .line 49
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 53
    .end local v0    # "bottom":F
    .end local v1    # "itemHeight":F
    .end local v2    # "top":F
    :cond_5
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    iget v4, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    goto :goto_1
.end method
