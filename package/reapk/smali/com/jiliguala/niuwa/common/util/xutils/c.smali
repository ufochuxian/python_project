.class public Lcom/jiliguala/niuwa/common/util/xutils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0x7d0


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Lrx/c/c;)Lrx/m;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "action1":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Void;>;"
    invoke-static {p0}, Lcom/jakewharton/rxbinding/view/e;->d(Landroid/view/View;)Lrx/e;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/e;->n(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Lrx/c/c;)Lrx/m;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "action1":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Void;>;"
    invoke-static {p0}, Lcom/jakewharton/rxbinding/view/e;->d(Landroid/view/View;)Lrx/e;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/e;->n(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 33
    const/4 v2, 0x1

    .line 36
    :goto_0
    return v2

    .line 35
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->a:J

    .line 36
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 6
    .param p1, "intervalTime"    # I

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->a:J

    sub-long v2, v0, v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 42
    const/4 v2, 0x1

    .line 45
    :goto_0
    return v2

    .line 44
    :cond_0
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->a:J

    .line 45
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 59
    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/c;->b:J

    .line 60
    const/4 v2, 0x1

    .line 62
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
