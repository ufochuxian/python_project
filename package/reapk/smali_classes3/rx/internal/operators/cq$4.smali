.class final Lrx/internal/operators/cq$4;
.super Lrx/d/c;
.source "SourceFile"


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
        "Lrx/d/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lrx/d/c;


# direct methods
.method constructor <init>(Lrx/e$a;Lrx/d/c;)V
    .locals 0

    .prologue
    .line 116
    .local p1, "x0":Lrx/e$a;, "Lrx/e$a<TT;>;"
    iput-object p2, p0, Lrx/internal/operators/cq$4;->b:Lrx/d/c;

    invoke-direct {p0, p1}, Lrx/d/c;-><init>(Lrx/e$a;)V

    return-void
.end method


# virtual methods
.method public h(Lrx/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$4;->b:Lrx/d/c;

    invoke-virtual {v0, p1}, Lrx/d/c;->h(Lrx/c/c;)V

    .line 120
    return-void
.end method
