.class public final Lrx/internal/operators/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/l$a;
    }
.end annotation


# instance fields
.field final a:[Lrx/b;


# direct methods
.method public constructor <init>([Lrx/b;)V
    .locals 0
    .param p1, "sources"    # [Lrx/b;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/internal/operators/l;->a:[Lrx/b;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 34
    new-instance v0, Lrx/internal/operators/l$a;

    iget-object v1, p0, Lrx/internal/operators/l;->a:[Lrx/b;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/l$a;-><init>(Lrx/d;[Lrx/b;)V

    .line 35
    .local v0, "inner":Lrx/internal/operators/l$a;
    iget-object v1, v0, Lrx/internal/operators/l$a;->d:Lrx/i/e;

    invoke-interface {p1, v1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 36
    invoke-virtual {v0}, Lrx/internal/operators/l$a;->a()V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/l;->a(Lrx/d;)V

    return-void
.end method
