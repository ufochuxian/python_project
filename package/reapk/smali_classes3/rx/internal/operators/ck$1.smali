.class final Lrx/internal/operators/ck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ck;->a(I)Lrx/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lrx/internal/operators/ck$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/ck$a;

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/h;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lrx/internal/operators/ck$1;->a:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/internal/operators/ck$a;-><init>(Lrx/h;Lrx/l;ZI)V

    .line 85
    .local v0, "parent":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/ck$a;->a()V

    .line 86
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ck$1;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
