.class La/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d$c;->b:J

    return-void
.end method

.method public a(JJ)V
    .locals 5
    .param p1, "inSize"    # J
    .param p3, "outSize"    # J

    .prologue
    .line 204
    iget-wide v0, p0, La/d$c;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, La/d$c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/d$c;->c:J

    .line 207
    iput-wide p1, p0, La/d$c;->b:J

    .line 209
    :cond_0
    return-void
.end method
