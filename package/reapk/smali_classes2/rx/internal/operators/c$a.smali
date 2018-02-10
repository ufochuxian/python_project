.class final Lrx/internal/operators/c$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    new-instance v0, Lrx/internal/operators/c$a$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/c$a$1;-><init>(Lrx/internal/operators/c$a;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    .line 84
    return-void
.end method
