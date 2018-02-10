.class public final Lrx/internal/operators/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ba$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/ba;, "Lrx/internal/operators/ba<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/internal/operators/ba;->a:Lrx/e;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/ba;, "Lrx/internal/operators/ba<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/ba$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/ba$a;-><init>(Lrx/l;)V

    iget-object v1, p0, Lrx/internal/operators/ba;->a:Lrx/e;

    invoke-virtual {v0, v1}, Lrx/internal/operators/ba$a;->a(Lrx/e;)V

    .line 33
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lrx/internal/operators/ba;, "Lrx/internal/operators/ba<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ba;->a(Lrx/l;)V

    return-void
.end method
