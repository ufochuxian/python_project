.class public final Lrx/internal/util/k;
.super Lrx/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/k$d;,
        Lrx/internal/util/k$c;,
        Lrx/internal/util/k$b;,
        Lrx/internal/util/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v1, "rx.just.strong-mode"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lrx/internal/util/k;->c:Z

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/k$a;

    invoke-direct {v0, p1}, Lrx/internal/util/k$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/f/c;->a(Lrx/e$a;)Lrx/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 77
    iput-object p1, p0, Lrx/internal/util/k;->b:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static a(Lrx/l;Ljava/lang/Object;)Lrx/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<-TT;>;TT;)",
            "Lrx/g;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "s":Lrx/l;, "Lrx/l<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lrx/internal/util/k;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/l;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/k$d;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/k$d;-><init>(Lrx/l;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static h(Ljava/lang/Object;)Lrx/internal/util/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/k;

    invoke-direct {v0, p0}, Lrx/internal/util/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public I(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    new-instance v0, Lrx/internal/util/k$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/k$3;-><init>(Lrx/internal/util/k;Lrx/c/p;)V

    invoke-static {v0}, Lrx/internal/util/k;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    iget-object v0, p0, Lrx/internal/util/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Lrx/h;)Lrx/e;
    .locals 4
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    instance-of v2, p1, Lrx/internal/schedulers/b;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lrx/internal/schedulers/b;

    .line 99
    .local v0, "els":Lrx/internal/schedulers/b;
    new-instance v1, Lrx/internal/util/k$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/util/k$1;-><init>(Lrx/internal/util/k;Lrx/internal/schedulers/b;)V

    .line 125
    .end local v0    # "els":Lrx/internal/schedulers/b;
    .local v1, "onSchedule":Lrx/c/p;, "Lrx/c/p<Lrx/c/b;Lrx/m;>;"
    :goto_0
    new-instance v2, Lrx/internal/util/k$b;

    iget-object v3, p0, Lrx/internal/util/k;->b:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lrx/internal/util/k$b;-><init>(Ljava/lang/Object;Lrx/c/p;)V

    invoke-static {v2}, Lrx/internal/util/k;->a(Lrx/e$a;)Lrx/e;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "onSchedule":Lrx/c/p;, "Lrx/c/p<Lrx/c/b;Lrx/m;>;"
    :cond_0
    new-instance v1, Lrx/internal/util/k$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/k$2;-><init>(Lrx/internal/util/k;Lrx/h;)V

    .restart local v1    # "onSchedule":Lrx/c/p;, "Lrx/c/p<Lrx/c/b;Lrx/m;>;"
    goto :goto_0
.end method
