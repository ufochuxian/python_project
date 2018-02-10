.class final Lrx/internal/operators/cp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cp;->a(Lrx/e;Lrx/c/p;Z)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lrx/c/p;

.field final synthetic c:Lrx/e;


# direct methods
.method constructor <init>(ZLrx/c/p;Lrx/e;)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lrx/internal/operators/cp$2;->a:Z

    iput-object p2, p0, Lrx/internal/operators/cp$2;->b:Lrx/c/p;

    iput-object p3, p0, Lrx/internal/operators/cp$2;->c:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribePublishMulticast;

    sget v2, Lrx/internal/util/j;->b:I

    iget-boolean v3, p0, Lrx/internal/operators/cp$2;->a:Z

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribePublishMulticast;-><init>(IZ)V

    .line 131
    .local v0, "op":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    new-instance v1, Lrx/internal/operators/cp$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/cp$2$1;-><init>(Lrx/internal/operators/cp$2;Lrx/l;Lrx/internal/operators/OnSubscribePublishMulticast;)V

    .line 155
    .local v1, "subscriber":Lrx/l;, "Lrx/l<TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 156
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 158
    iget-object v2, p0, Lrx/internal/operators/cp$2;->b:Lrx/c/p;

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/e;

    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 160
    iget-object v2, p0, Lrx/internal/operators/cp$2;->c:Lrx/e;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->subscriber()Lrx/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 161
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cp$2;->a(Lrx/l;)V

    return-void
.end method
