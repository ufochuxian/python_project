.class final Lrx/internal/operators/cv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cv;->a(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/q;


# direct methods
.method constructor <init>(Lrx/c/q;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/cv$1;->a:Lrx/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/cv$1;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    sget-object v4, Lrx/internal/operators/cv;->a:Ljava/lang/Object;

    if-ne p1, v4, :cond_0

    move v0, v2

    .line 69
    .local v0, "c1":Z
    :goto_0
    sget-object v4, Lrx/internal/operators/cv;->a:Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    move v1, v2

    .line 70
    .local v1, "c2":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    :goto_2
    return-object v2

    .end local v0    # "c1":Z
    .end local v1    # "c2":Z
    :cond_0
    move v0, v3

    .line 68
    goto :goto_0

    .restart local v0    # "c1":Z
    :cond_1
    move v1, v3

    .line 69
    goto :goto_1

    .line 73
    .restart local v1    # "c2":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 74
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 77
    :cond_4
    iget-object v2, p0, Lrx/internal/operators/cv$1;->a:Lrx/c/q;

    invoke-interface {v2, p1, p2}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_2
.end method
