.class final Lcom/squareup/okhttp/w$2;
.super Lcom/squareup/okhttp/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;Ljava/io/File;)Lcom/squareup/okhttp/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/r;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/r;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/w$2;->a:Lcom/squareup/okhttp/r;

    iput-object p2, p0, Lcom/squareup/okhttp/w$2;->b:Ljava/io/File;

    invoke-direct {p0}, Lcom/squareup/okhttp/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/r;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/w$2;->a:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public a(Lokio/d;)V
    .locals 2
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "source":Lokio/x;
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/w$2;->b:Ljava/io/File;

    invoke-static {v1}, Lokio/o;->a(Ljava/io/File;)Lokio/x;

    move-result-object v0

    .line 100
    invoke-interface {p1, v0}, Lokio/d;->a(Lokio/x;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public b()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/okhttp/w$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
