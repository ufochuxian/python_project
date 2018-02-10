.class final Lokhttp3/internal/framed/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/framed/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 93
    return-void
.end method

.method public a(ILjava/util/List;)Z
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;Z)Z
    .locals 1
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILokio/e;IZ)Z
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/e;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/e;->h(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
