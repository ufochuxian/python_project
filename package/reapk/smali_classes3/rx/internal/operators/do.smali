.class public final Lrx/internal/operators/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/schedulers/b",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/h;


# direct methods
.method public constructor <init>(Lrx/h;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/do;, "Lrx/internal/operators/do<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/do;->a:Lrx/h;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/schedulers/b",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/do;, "Lrx/internal/operators/do<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lrx/schedulers/b<TT;>;>;"
    new-instance v0, Lrx/internal/operators/do$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/do$1;-><init>(Lrx/internal/operators/do;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/do;, "Lrx/internal/operators/do<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/do;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
