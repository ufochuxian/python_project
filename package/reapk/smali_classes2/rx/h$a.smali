.class public abstract Lrx/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Lrx/c/b;)Lrx/m;
.end method

.method public a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 8
    .param p1, "action"    # Lrx/c/b;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 111
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lrx/internal/schedulers/i;->a(Lrx/h$a;Lrx/c/b;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/i$a;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
.end method
