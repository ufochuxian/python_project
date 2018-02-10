.class Lrx/internal/util/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/k;->h(Lrx/h;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/c/b;",
        "Lrx/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/b;

.field final synthetic b:Lrx/internal/util/k;


# direct methods
.method constructor <init>(Lrx/internal/util/k;Lrx/internal/schedulers/b;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/k$1;, "Lrx/internal/util/k.1;"
    iput-object p1, p0, Lrx/internal/util/k$1;->b:Lrx/internal/util/k;

    iput-object p2, p0, Lrx/internal/util/k$1;->a:Lrx/internal/schedulers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 1
    .param p1, "a"    # Lrx/c/b;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/util/k$1;, "Lrx/internal/util/k.1;"
    iget-object v0, p0, Lrx/internal/util/k$1;->a:Lrx/internal/schedulers/b;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/b;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/k$1;, "Lrx/internal/util/k.1;"
    check-cast p1, Lrx/c/b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/k$1;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
