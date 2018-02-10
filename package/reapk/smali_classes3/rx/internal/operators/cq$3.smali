.class final Lrx/internal/operators/cq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cq;->a(Lrx/d/c;Lrx/h;)Lrx/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/e;


# direct methods
.method constructor <init>(Lrx/e;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lrx/internal/operators/cq$3;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 100
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$3;->a:Lrx/e;

    new-instance v1, Lrx/internal/operators/cq$3$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/operators/cq$3$1;-><init>(Lrx/internal/operators/cq$3;Lrx/l;Lrx/l;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 114
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cq$3;->a(Lrx/l;)V

    return-void
.end method
