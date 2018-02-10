.class final Lrx/h/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/a;->K()Lrx/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lrx/h/g$b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h/g;


# direct methods
.method constructor <init>(Lrx/h/g;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lrx/h/a$1;->a:Lrx/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/h/g$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "o":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v1, p0, Lrx/h/a$1;->a:Lrx/h/g;

    invoke-virtual {v1}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lrx/h/g$b;->onCompleted()V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-static {v0}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/h/g$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p1, Lrx/h/g$b;->a:Lrx/l;

    new-instance v2, Lrx/internal/producers/SingleProducer;

    iget-object v3, p1, Lrx/h/g$b;->a:Lrx/l;

    invoke-static {v0}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lrx/l;->setProducer(Lrx/g;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lrx/h/g$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/a$1;->a(Lrx/h/g$b;)V

    return-void
.end method
