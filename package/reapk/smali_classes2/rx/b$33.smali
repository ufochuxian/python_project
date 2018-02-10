.class final Lrx/b$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Ljava/lang/Throwable;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lrx/b$33;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 1
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 448
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 449
    iget-object v0, p0, Lrx/b$33;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 445
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$33;->a(Lrx/d;)V

    return-void
.end method
