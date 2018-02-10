.class Lio/fabric/sdk/android/services/network/HttpRequest$3;
.super Lio/fabric/sdk/android/services/network/HttpRequest$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;
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
.field final synthetic a:Ljava/io/OutputStream;

.field final synthetic b:Lio/fabric/sdk/android/services/network/HttpRequest;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 1720
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/HttpRequest$3;->b:Lio/fabric/sdk/android/services/network/HttpRequest;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/HttpRequest$3;->a:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected a()Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1724
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/HttpRequest$3;->b:Lio/fabric/sdk/android/services/network/HttpRequest;

    iget-object v1, p0, Lio/fabric/sdk/android/services/network/HttpRequest$3;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$3;->a()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method
