.class final Lrx/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 1
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 73
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 74
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    .line 75
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$1;->a(Lrx/d;)V

    return-void
.end method
