.class final Lrx/internal/util/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/k;
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
        "Lrx/e$a",
        "<TT;>;"
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

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Lrx/c/b;",
            "Lrx/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<",
            "Lrx/c/b;",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/util/k$b;, "Lrx/internal/util/k$b<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "onSchedule":Lrx/c/p;, "Lrx/c/p<Lrx/c/b;Lrx/m;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lrx/internal/util/k$b;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lrx/internal/util/k$b;->b:Lrx/c/p;

    .line 155
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/util/k$b;, "Lrx/internal/util/k$b<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/util/k$c;

    iget-object v1, p0, Lrx/internal/util/k$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/k$b;->b:Lrx/c/p;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/k$c;-><init>(Lrx/l;Ljava/lang/Object;Lrx/c/p;)V

    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 160
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/util/k$b;, "Lrx/internal/util/k$b<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/k$b;->a(Lrx/l;)V

    return-void
.end method
