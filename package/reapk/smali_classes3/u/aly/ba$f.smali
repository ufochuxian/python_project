.class public Lu/aly/ba$f;
.super Lu/aly/ba$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:J

.field private b:Lu/aly/an;


# direct methods
.method public constructor <init>(Lu/aly/an;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lu/aly/ba$h;-><init>()V

    .line 141
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lu/aly/ba$f;->a:J

    .line 145
    iput-object p1, p0, Lu/aly/ba$f;->b:Lu/aly/an;

    .line 146
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/ba$f;->b:Lu/aly/an;

    iget-wide v2, v2, Lu/aly/an;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lu/aly/ba$f;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
