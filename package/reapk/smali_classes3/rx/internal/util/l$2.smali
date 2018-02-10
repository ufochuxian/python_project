.class Lrx/internal/util/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/l;->i(Lrx/c/p;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;

.field final synthetic b:Lrx/internal/util/l;


# direct methods
.method constructor <init>(Lrx/internal/util/l;Lrx/c/p;)V
    .locals 0

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/util/l$2;, "Lrx/internal/util/l.2;"
    iput-object p1, p0, Lrx/internal/util/l$2;->b:Lrx/internal/util/l;

    iput-object p2, p0, Lrx/internal/util/l$2;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/l$2;, "Lrx/internal/util/l.2;"
    .local p1, "child":Lrx/k;, "Lrx/k<-TR;>;"
    iget-object v2, p0, Lrx/internal/util/l$2;->a:Lrx/c/p;

    iget-object v3, p0, Lrx/internal/util/l$2;->b:Lrx/internal/util/l;

    iget-object v3, v3, Lrx/internal/util/l;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i;

    .line 129
    .local v0, "o":Lrx/i;, "Lrx/i<+TR;>;"
    instance-of v2, v0, Lrx/internal/util/l;

    if-eqz v2, :cond_0

    .line 130
    check-cast v0, Lrx/internal/util/l;

    .end local v0    # "o":Lrx/i;, "Lrx/i<+TR;>;"
    iget-object v2, v0, Lrx/internal/util/l;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 132
    .restart local v0    # "o":Lrx/i;, "Lrx/i<+TR;>;"
    :cond_0
    new-instance v1, Lrx/internal/util/l$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/l$2$1;-><init>(Lrx/internal/util/l$2;Lrx/k;)V

    .line 143
    .local v1, "subscriber":Lrx/k;, "Lrx/k<TR;>;"
    invoke-virtual {p1, v1}, Lrx/k;->a(Lrx/m;)V

    .line 144
    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/k;)Lrx/m;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/util/l$2;, "Lrx/internal/util/l.2;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/l$2;->a(Lrx/k;)V

    return-void
.end method
