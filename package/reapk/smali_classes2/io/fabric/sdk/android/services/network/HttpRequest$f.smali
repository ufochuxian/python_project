.class public Lio/fabric/sdk/android/services/network/HttpRequest$f;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "bufferSize"    # I

    .prologue
    .line 684
    invoke-direct {p0, p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 686
    invoke-static {p2}, Lio/fabric/sdk/android/services/network/HttpRequest;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest$f;->a:Ljava/nio/charset/CharsetEncoder;

    .line 687
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/network/HttpRequest$f;)Ljava/nio/charset/CharsetEncoder;
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/services/network/HttpRequest$f;

    .prologue
    .line 672
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest$f;->a:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest$f;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest$f;->a:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 699
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 701
    return-object p0
.end method
