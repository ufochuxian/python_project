.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

.field private final timeout:I


# direct methods
.method private constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;I)V
    .locals 0
    .param p2, "timeout"    # I

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    iput p2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->timeout:I

    .line 1541
    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;ILcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;)V
    .locals 0

    .prologue
    .line 1538
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1546
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "++++httpserver into server runner"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1551
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$3(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 1553
    .local v1, "finalAccept":Ljava/net/Socket;
    iget v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v3, :cond_1

    .line 1555
    iget v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1557
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "++++httpserver accept connection setSoTimeout = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1559
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v3, v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->asyncRunner:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-virtual {v4, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;->exec(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .end local v1    # "finalAccept":Ljava/net/Socket;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$3(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1565
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$1()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "++++httpserver Communication with the client broken"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
