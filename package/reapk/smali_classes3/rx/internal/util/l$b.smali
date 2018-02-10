.class final Lrx/internal/util/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/h;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/h;Ljava/lang/Object;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/util/l$b;, "Lrx/internal/util/l$b<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lrx/internal/util/l$b;->a:Lrx/h;

    .line 89
    iput-object p2, p0, Lrx/internal/util/l$b;->b:Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/util/l$b;, "Lrx/internal/util/l$b<TT;>;"
    .local p1, "singleSubscriber":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v1, p0, Lrx/internal/util/l$b;->a:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 95
    .local v0, "worker":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 96
    new-instance v1, Lrx/internal/util/l$c;

    iget-object v2, p0, Lrx/internal/util/l$b;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/l$c;-><init>(Lrx/k;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/util/l$b;, "Lrx/internal/util/l$b<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/l$b;->a(Lrx/k;)V

    return-void
.end method
