.class final Lrx/f/c$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/f/c;->a()V
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
        "Lrx/i;",
        "Lrx/i$a;",
        "Lrx/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lrx/i;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/i$a;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/f/c$14;->a(Lrx/i;Lrx/i$a;)Lrx/i$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/i;Lrx/i$a;)Lrx/i$a;
    .locals 3
    .param p1, "t1"    # Lrx/i;
    .param p2, "t2"    # Lrx/i$a;

    .prologue
    .line 127
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v1

    invoke-virtual {v1}, Lrx/f/f;->e()Lrx/f/h;

    move-result-object v0

    .line 129
    .local v0, "hook":Lrx/f/h;
    invoke-static {}, Lrx/f/i;->a()Lrx/f/h;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    .end local p2    # "t2":Lrx/i$a;
    :goto_0
    return-object p2

    .restart local p2    # "t2":Lrx/i$a;
    :cond_0
    new-instance v1, Lrx/internal/operators/en;

    new-instance v2, Lrx/internal/operators/fa;

    invoke-direct {v2, p2}, Lrx/internal/operators/fa;-><init>(Lrx/i$a;)V

    invoke-virtual {v0, p1, v2}, Lrx/f/h;->a(Lrx/i;Lrx/e$a;)Lrx/e$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lrx/internal/operators/en;-><init>(Lrx/e$a;)V

    move-object p2, v1

    goto :goto_0
.end method
