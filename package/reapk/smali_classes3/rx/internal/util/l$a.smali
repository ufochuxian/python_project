.class final Lrx/internal/util/l$a;
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
    name = "a"
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
.field private final a:Lrx/internal/schedulers/b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/b;Ljava/lang/Object;)V
    .locals 0
    .param p1, "es"    # Lrx/internal/schedulers/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/b;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/l$a;, "Lrx/internal/util/l$a<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lrx/internal/util/l$a;->a:Lrx/internal/schedulers/b;

    .line 71
    iput-object p2, p0, Lrx/internal/util/l$a;->b:Ljava/lang/Object;

    .line 72
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
    .line 76
    .local p0, "this":Lrx/internal/util/l$a;, "Lrx/internal/util/l$a<TT;>;"
    .local p1, "singleSubscriber":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/l$a;->a:Lrx/internal/schedulers/b;

    new-instance v1, Lrx/internal/util/l$c;

    iget-object v2, p0, Lrx/internal/util/l$a;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/l$c;-><init>(Lrx/k;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/b;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 77
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/util/l$a;, "Lrx/internal/util/l$a<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/l$a;->a(Lrx/k;)V

    return-void
.end method
