.class Lrx/internal/operators/cr$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cr$a;->a(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/internal/operators/cr$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/cr$a;Lrx/e;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/cr$a$1;, "Lrx/internal/operators/cr$a.1;"
    iput-object p1, p0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iput-object p2, p0, Lrx/internal/operators/cr$a$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/cr$a$1;, "Lrx/internal/operators/cr$a.1;"
    move-object v0, p0

    .line 84
    .local v0, "_self":Lrx/c/b;
    iget-object v2, p0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v2, v2, Lrx/internal/operators/cr$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 88
    new-instance v1, Lrx/internal/operators/cr$a$1$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/cr$a$1$1;-><init>(Lrx/internal/operators/cr$a$1;Lrx/c/b;)V

    .line 126
    .local v1, "subscriber":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/cr$a$1;->b:Lrx/internal/operators/cr$a;

    iget-object v2, v2, Lrx/internal/operators/cr$a;->d:Lrx/i/e;

    invoke-virtual {v2, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 127
    iget-object v2, p0, Lrx/internal/operators/cr$a$1;->a:Lrx/e;

    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 128
    return-void
.end method
