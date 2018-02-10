.class Lrx/internal/util/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/l;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/util/l$1;, "Lrx/internal/util/l.1;"
    iput-object p1, p0, Lrx/internal/util/l$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/l$1;, "Lrx/internal/util/l.1;"
    .local p1, "te":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/l$1;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/util/l$1;, "Lrx/internal/util/l.1;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/l$1;->a(Lrx/k;)V

    return-void
.end method
