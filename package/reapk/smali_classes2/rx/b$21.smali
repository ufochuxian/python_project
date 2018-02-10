.class Lrx/b$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->f(Lrx/c/b;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/i/c;

.field final synthetic d:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/c/b;Lrx/i/c;)V
    .locals 0

    .prologue
    .line 1928
    iput-object p1, p0, Lrx/b$21;->d:Lrx/b;

    iput-object p2, p0, Lrx/b$21;->b:Lrx/c/b;

    iput-object p3, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 1932
    iget-boolean v1, p0, Lrx/b$21;->a:Z

    if-nez v1, :cond_0

    .line 1933
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/b$21;->a:Z

    .line 1935
    :try_start_0
    iget-object v1, p0, Lrx/b$21;->b:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    iget-object v1, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->unsubscribe()V

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 1938
    invoke-static {v0}, Lrx/b;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1940
    iget-object v1, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-virtual {v2}, Lrx/i/c;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1947
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 1948
    iget-object v0, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->unsubscribe()V

    .line 1949
    invoke-static {p1}, Lrx/b;->c(Ljava/lang/Throwable;)V

    .line 1950
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1954
    iget-object v0, p0, Lrx/b$21;->c:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Lrx/m;)V

    .line 1955
    return-void
.end method
