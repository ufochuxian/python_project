.class public Lu/aly/ba$b;
.super Lu/aly/ba$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lu/aly/aq;

.field private b:Lu/aly/an;


# direct methods
.method public constructor <init>(Lu/aly/an;Lu/aly/aq;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lu/aly/ba$h;-><init>()V

    .line 174
    iput-object p1, p0, Lu/aly/ba$b;->b:Lu/aly/an;

    .line 175
    iput-object p2, p0, Lu/aly/ba$b;->a:Lu/aly/aq;

    .line 176
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lu/aly/ba$b;->a:Lu/aly/aq;

    invoke-virtual {v0}, Lu/aly/aq;->d()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    iget-object v2, p0, Lu/aly/ba$b;->a:Lu/aly/aq;

    invoke-virtual {v2}, Lu/aly/aq;->b()J

    move-result-wide v2

    .line 182
    iget-object v4, p0, Lu/aly/ba$b;->b:Lu/aly/an;

    iget-wide v4, v4, Lu/aly/an;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
