.class final Lrx/internal/operators/h$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/h;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x271aaa367272024eL


# instance fields
.field final a:Lrx/internal/operators/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/h$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/h$b;, "Lrx/internal/operators/h$b<TT;>;"
    .local p1, "state":Lrx/internal/operators/h$a;, "Lrx/internal/operators/h$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 235
    iput-object p1, p0, Lrx/internal/operators/h$b;->a:Lrx/internal/operators/h$a;

    .line 236
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/h$b;, "Lrx/internal/operators/h$b<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/h$b;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/operators/h$b;, "Lrx/internal/operators/h$b<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/h$c;

    iget-object v1, p0, Lrx/internal/operators/h$b;->a:Lrx/internal/operators/h$a;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/h$c;-><init>(Lrx/l;Lrx/internal/operators/h$a;)V

    .line 241
    .local v0, "rp":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/h$b;->a:Lrx/internal/operators/h$a;

    invoke-virtual {v1, v0}, Lrx/internal/operators/h$a;->a(Lrx/internal/operators/h$c;)V

    .line 243
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 244
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/h$b;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/h$b;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lrx/internal/operators/h$b;->a:Lrx/internal/operators/h$a;

    invoke-virtual {v1}, Lrx/internal/operators/h$a;->a()V

    .line 252
    :cond_0
    return-void
.end method
