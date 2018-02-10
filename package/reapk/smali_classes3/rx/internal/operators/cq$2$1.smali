.class Lrx/internal/operators/cq$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cq$2;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lrx/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/cq$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/cq$2;Lrx/l;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/internal/operators/cq$2$1;->b:Lrx/internal/operators/cq$2;

    iput-object p2, p0, Lrx/internal/operators/cq$2$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/m;)V
    .locals 1
    .param p1, "t"    # Lrx/m;

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/cq$2$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->add(Lrx/m;)V

    .line 80
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lrx/m;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cq$2$1;->a(Lrx/m;)V

    return-void
.end method
