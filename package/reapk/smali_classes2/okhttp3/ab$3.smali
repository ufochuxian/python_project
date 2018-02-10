.class final Lokhttp3/ab$3;
.super Lokhttp3/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ab;->create(Lokhttp3/w;Ljava/io/File;)Lokhttp3/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/w;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lokhttp3/w;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lokhttp3/ab$3;->a:Lokhttp3/w;

    iput-object p2, p0, Lokhttp3/ab$3;->b:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/ab$3;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/w;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lokhttp3/ab$3;->a:Lokhttp3/w;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .locals 2
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "source":Lokio/x;
    :try_start_0
    iget-object v1, p0, Lokhttp3/ab$3;->b:Ljava/io/File;

    invoke-static {v1}, Lokio/o;->a(Ljava/io/File;)Lokio/x;

    move-result-object v0

    .line 118
    invoke-interface {p1, v0}, Lokio/d;->a(Lokio/x;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method
