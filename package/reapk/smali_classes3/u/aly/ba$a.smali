.class public Lu/aly/ba$a;
.super Lu/aly/ba$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private b:Lu/aly/an;


# direct methods
.method public constructor <init>(Lu/aly/an;)V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lu/aly/ba$h;-><init>()V

    .line 235
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lu/aly/ba$a;->a:J

    .line 239
    iput-object p1, p0, Lu/aly/ba$a;->b:Lu/aly/an;

    .line 240
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/ba$a;->b:Lu/aly/an;

    iget-wide v2, v2, Lu/aly/an;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
