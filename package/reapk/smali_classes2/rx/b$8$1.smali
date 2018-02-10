.class Lrx/b$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$8;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/b;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/d;

.field final synthetic d:Lrx/b$8;


# direct methods
.method constructor <init>(Lrx/b$8;Lrx/i/b;Lrx/h$a;Lrx/d;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iput-object p2, p0, Lrx/b$8$1;->a:Lrx/i/b;

    iput-object p3, p0, Lrx/b$8$1;->b:Lrx/h$a;

    iput-object p4, p0, Lrx/b$8$1;->c:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .prologue
    .line 1248
    iget-object v0, p0, Lrx/b$8$1;->a:Lrx/i/b;

    iget-object v1, p0, Lrx/b$8$1;->b:Lrx/h$a;

    new-instance v2, Lrx/b$8$1$1;

    invoke-direct {v2, p0}, Lrx/b$8$1$1;-><init>(Lrx/b$8$1;)V

    iget-object v3, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iget-wide v4, v3, Lrx/b$8;->b:J

    iget-object v3, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iget-object v3, v3, Lrx/b$8;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1258
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1262
    iget-object v0, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iget-boolean v0, v0, Lrx/b$8;->d:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lrx/b$8$1;->a:Lrx/i/b;

    iget-object v1, p0, Lrx/b$8$1;->b:Lrx/h$a;

    new-instance v2, Lrx/b$8$1$2;

    invoke-direct {v2, p0, p1}, Lrx/b$8$1$2;-><init>(Lrx/b$8$1;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iget-wide v4, v3, Lrx/b$8;->b:J

    iget-object v3, p0, Lrx/b$8$1;->d:Lrx/b$8;

    iget-object v3, v3, Lrx/b$8;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Lrx/b$8$1;->c:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 2
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1280
    iget-object v0, p0, Lrx/b$8$1;->a:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1281
    iget-object v0, p0, Lrx/b$8$1;->c:Lrx/d;

    iget-object v1, p0, Lrx/b$8$1;->a:Lrx/i/b;

    invoke-interface {v0, v1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 1282
    return-void
.end method
