.class Lrx/b$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/h;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/h;)V
    .locals 0

    .prologue
    .line 1609
    iput-object p1, p0, Lrx/b$17;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$17;->a:Lrx/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 4
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 1613
    new-instance v0, Lrx/internal/util/m;

    invoke-direct {v0}, Lrx/internal/util/m;-><init>()V

    .line 1615
    .local v0, "ad":Lrx/internal/util/m;
    iget-object v2, p0, Lrx/b$17;->a:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 1616
    .local v1, "w":Lrx/h$a;
    invoke-virtual {v0, v1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 1618
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 1620
    iget-object v2, p0, Lrx/b$17;->b:Lrx/b;

    new-instance v3, Lrx/b$17$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lrx/b$17$1;-><init>(Lrx/b$17;Lrx/h$a;Lrx/d;Lrx/internal/util/m;)V

    invoke-virtual {v2, v3}, Lrx/b;->a(Lrx/d;)V

    .line 1656
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1609
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$17;->a(Lrx/d;)V

    return-void
.end method
