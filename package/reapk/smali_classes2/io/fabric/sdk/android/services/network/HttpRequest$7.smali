.class Lio/fabric/sdk/android/services/network/HttpRequest$7;
.super Lio/fabric/sdk/android/services/network/HttpRequest$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/io/Reader;Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/network/HttpRequest$b",
        "<",
        "Lio/fabric/sdk/android/services/network/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/Reader;

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lio/fabric/sdk/android/services/network/HttpRequest;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 2387
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->c:Lio/fabric/sdk/android/services/network/HttpRequest;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->a:Ljava/io/Reader;

    iput-object p5, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->b:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2391
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->c:Lio/fabric/sdk/android/services/network/HttpRequest;

    invoke-static {v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Lio/fabric/sdk/android/services/network/HttpRequest;)I

    move-result v2

    new-array v0, v2, [C

    .line 2393
    .local v0, "buffer":[C
    :goto_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->a:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2394
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->b:Ljava/io/Writer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2395
    :cond_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/HttpRequest$7;->c:Lio/fabric/sdk/android/services/network/HttpRequest;

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2387
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$7;->a()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method
