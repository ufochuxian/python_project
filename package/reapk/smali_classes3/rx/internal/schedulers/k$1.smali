.class Lrx/internal/schedulers/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/k;->createWorker()Lrx/h$a;
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
        "Lrx/internal/schedulers/k$d;",
        "Lrx/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h$a;

.field final synthetic b:Lrx/internal/schedulers/k;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/k;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lrx/internal/schedulers/k$1;->b:Lrx/internal/schedulers/k;

    iput-object p2, p0, Lrx/internal/schedulers/k$1;->a:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/internal/schedulers/k$d;)Lrx/b;
    .locals 1
    .param p1, "action"    # Lrx/internal/schedulers/k$d;

    .prologue
    .line 142
    new-instance v0, Lrx/internal/schedulers/k$1$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/schedulers/k$1$1;-><init>(Lrx/internal/schedulers/k$1;Lrx/internal/schedulers/k$d;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lrx/internal/schedulers/k$d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/k$1;->a(Lrx/internal/schedulers/k$d;)Lrx/b;

    move-result-object v0

    return-object v0
.end method
