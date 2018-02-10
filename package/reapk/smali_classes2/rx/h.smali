.class public abstract Lrx/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract createWorker()Lrx/h$a;
.end method

.method public now()J
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public when(Lrx/c/p;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lrx/h;",
            ":",
            "Lrx/m;",
            ">(",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<",
            "Lrx/b;",
            ">;>;",
            "Lrx/b;",
            ">;)TS;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 210
    .local p1, "combine":Lrx/c/p;, "Lrx/c/p<Lrx/e<Lrx/e<Lrx/b;>;>;Lrx/b;>;"
    new-instance v0, Lrx/internal/schedulers/k;

    invoke-direct {v0, p1, p0}, Lrx/internal/schedulers/k;-><init>(Lrx/c/p;Lrx/h;)V

    return-object v0
.end method
