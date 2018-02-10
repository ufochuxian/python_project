.class final Lrx/internal/operators/cg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<TU;TR;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/cg$b;, "Lrx/internal/operators/cg$b<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lrx/internal/operators/cg$b;->a:Ljava/lang/Object;

    .line 137
    iput-object p2, p0, Lrx/internal/operators/cg$b;->b:Lrx/c/q;

    .line 138
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TR;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/cg$b;, "Lrx/internal/operators/cg$b<TT;TU;TR;>;"
    .local p1, "inner":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/cg$b;->b:Lrx/c/q;

    iget-object v1, p0, Lrx/internal/operators/cg$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
