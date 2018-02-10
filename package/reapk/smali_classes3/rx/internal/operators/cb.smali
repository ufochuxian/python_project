.class public final Lrx/internal/operators/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cb$a;,
        Lrx/internal/operators/cb$c;,
        Lrx/internal/operators/cb$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/c/p;II)V
    .locals 0
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/cb;, "Lrx/internal/operators/cb<TT;TR;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/cb;->a:Lrx/c/p;

    .line 37
    iput p2, p0, Lrx/internal/operators/cb;->b:I

    .line 38
    iput p3, p0, Lrx/internal/operators/cb;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/cb;, "Lrx/internal/operators/cb<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/cb$c;

    iget-object v1, p0, Lrx/internal/operators/cb;->a:Lrx/c/p;

    iget v2, p0, Lrx/internal/operators/cb;->b:I

    iget v3, p0, Lrx/internal/operators/cb;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/internal/operators/cb$c;-><init>(Lrx/c/p;IILrx/l;)V

    .line 44
    .local v0, "outer":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    invoke-virtual {v0}, Lrx/internal/operators/cb$c;->a()V

    .line 45
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/cb;, "Lrx/internal/operators/cb<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cb;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
