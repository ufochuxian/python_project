.class public Lu/aly/ba$j;
.super Lu/aly/ba$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private final a:J

.field private b:Lu/aly/an;


# direct methods
.method public constructor <init>(Lu/aly/an;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lu/aly/ba$h;-><init>()V

    .line 218
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lu/aly/ba$j;->a:J

    .line 222
    iput-object p1, p0, Lu/aly/ba$j;->b:Lu/aly/an;

    .line 223
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/ba$j;->b:Lu/aly/an;

    iget-wide v2, v2, Lu/aly/an;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
