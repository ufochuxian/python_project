.class Lcom/squareup/okhttp/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/c;->c()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/okhttp/internal/a$c;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lcom/squareup/okhttp/c;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/c;)V
    .locals 1
    .param p1, "this$0"    # Lcom/squareup/okhttp/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iput-object p1, p0, Lcom/squareup/okhttp/c$2;->d:Lcom/squareup/okhttp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iget-object v0, p0, Lcom/squareup/okhttp/c$2;->d:Lcom/squareup/okhttp/c;

    invoke-static {v0}, Lcom/squareup/okhttp/c;->b(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->i()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$2;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/squareup/okhttp/c$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/c$2;->b:Ljava/lang/String;

    .line 329
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/c$2;->b:Ljava/lang/String;

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/c$2;->c:Z

    .line 331
    return-object v0
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v4, p0, Lcom/squareup/okhttp/c$2;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 323
    :goto_0
    return v2

    .line 308
    :cond_0
    iput-boolean v3, p0, Lcom/squareup/okhttp/c$2;->c:Z

    .line 309
    :goto_1
    iget-object v4, p0, Lcom/squareup/okhttp/c$2;->a:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    iget-object v4, p0, Lcom/squareup/okhttp/c$2;->a:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/internal/a$c;

    .line 312
    .local v1, "snapshot":Lcom/squareup/okhttp/internal/a$c;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Lcom/squareup/okhttp/internal/a$c;->a(I)Lokio/x;

    move-result-object v4

    invoke-static {v4}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v0

    .line 313
    .local v0, "metadata":Lokio/e;
    invoke-interface {v0}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/c$2;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a$c;->close()V

    goto :goto_0

    .line 315
    .end local v0    # "metadata":Lokio/e;
    :catch_0
    move-exception v4

    .line 319
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a$c;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a$c;->close()V

    throw v2

    .end local v1    # "snapshot":Lcom/squareup/okhttp/internal/a$c;
    :cond_1
    move v2, v3

    .line 323
    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/squareup/okhttp/c$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/squareup/okhttp/c$2;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/c$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    return-void
.end method