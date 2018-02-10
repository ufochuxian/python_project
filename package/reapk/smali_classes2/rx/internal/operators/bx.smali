.class public final Lrx/internal/operators/bx;
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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/b;)V
    .locals 2
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/bx;, "Lrx/internal/operators/bx<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/bx;->a:Lrx/c/b;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/bx;, "Lrx/internal/operators/bx<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/bx$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/bx$1;-><init>(Lrx/internal/operators/bx;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/bx;, "Lrx/internal/operators/bx<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bx;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
