.class Lrx/b$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$17;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h$a;

.field final synthetic b:Lrx/d;

.field final synthetic c:Lrx/internal/util/m;

.field final synthetic d:Lrx/b$17;


# direct methods
.method constructor <init>(Lrx/b$17;Lrx/h$a;Lrx/d;Lrx/internal/util/m;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lrx/b$17$1;->d:Lrx/b$17;

    iput-object p2, p0, Lrx/b$17$1;->a:Lrx/h$a;

    iput-object p3, p0, Lrx/b$17$1;->b:Lrx/d;

    iput-object p4, p0, Lrx/b$17$1;->c:Lrx/internal/util/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lrx/b$17$1;->a:Lrx/h$a;

    new-instance v1, Lrx/b$17$1$1;

    invoke-direct {v1, p0}, Lrx/b$17$1$1;-><init>(Lrx/b$17$1;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 1634
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1638
    iget-object v0, p0, Lrx/b$17$1;->a:Lrx/h$a;

    new-instance v1, Lrx/b$17$1$2;

    invoke-direct {v1, p0, p1}, Lrx/b$17$1$2;-><init>(Lrx/b$17$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 1648
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1652
    iget-object v0, p0, Lrx/b$17$1;->c:Lrx/internal/util/m;

    invoke-virtual {v0, p1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 1653
    return-void
.end method
