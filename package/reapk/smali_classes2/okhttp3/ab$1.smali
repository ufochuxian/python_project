.class final Lokhttp3/ab$1;
.super Lokhttp3/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ab;->create(Lokhttp3/w;Lokio/ByteString;)Lokhttp3/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/w;

.field final synthetic b:Lokio/ByteString;


# direct methods
.method constructor <init>(Lokhttp3/w;Lokio/ByteString;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lokhttp3/ab$1;->a:Lokhttp3/w;

    iput-object p2, p0, Lokhttp3/ab$1;->b:Lokio/ByteString;

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/ab$1;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/w;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/ab$1;->a:Lokhttp3/w;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lokhttp3/ab$1;->b:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/d;->d(Lokio/ByteString;)Lokio/d;

    .line 72
    return-void
.end method
