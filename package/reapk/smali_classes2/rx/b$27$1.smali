.class Lrx/b$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$27;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/b$27;


# direct methods
.method constructor <init>(Lrx/b$27;Lrx/k;)V
    .locals 0

    .prologue
    .line 2273
    iput-object p1, p0, Lrx/b$27$1;->b:Lrx/b$27;

    iput-object p2, p0, Lrx/b$27$1;->a:Lrx/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 2280
    :try_start_0
    iget-object v2, p0, Lrx/b$27$1;->b:Lrx/b$27;

    iget-object v2, v2, Lrx/b$27;->a:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2286
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 2287
    iget-object v2, p0, Lrx/b$27$1;->a:Lrx/k;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The value supplied is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 2291
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 2281
    :catch_0
    move-exception v0

    .line 2282
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/b$27$1;->a:Lrx/k;

    invoke-virtual {v2, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2289
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lrx/b$27$1;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2295
    iget-object v0, p0, Lrx/b$27$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 2296
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 2300
    iget-object v0, p0, Lrx/b$27$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Lrx/m;)V

    .line 2301
    return-void
.end method
