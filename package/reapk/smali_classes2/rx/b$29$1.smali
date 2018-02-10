.class Lrx/b$29$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$29;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/b$29;


# direct methods
.method constructor <init>(Lrx/b$29;Lrx/d;)V
    .locals 0

    .prologue
    .line 2338
    iput-object p1, p0, Lrx/b$29$1;->b:Lrx/b$29;

    iput-object p2, p0, Lrx/b$29$1;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Lrx/b$29$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 2343
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2347
    iget-object v0, p0, Lrx/b$29$1;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 2348
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 2
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 2352
    iget-object v0, p0, Lrx/b$29$1;->a:Lrx/d;

    new-instance v1, Lrx/b$29$1$1;

    invoke-direct {v1, p0, p1}, Lrx/b$29$1$1;-><init>(Lrx/b$29$1;Lrx/m;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 2368
    return-void
.end method
