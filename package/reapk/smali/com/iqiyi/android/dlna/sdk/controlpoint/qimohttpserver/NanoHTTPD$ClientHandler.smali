.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;
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
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "acceptSocket"    # Ljava/net/Socket;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 162
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 168
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->socketsafeClose(Ljava/net/Socket;)V

    .line 169
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 188
    const/4 v4, 0x0

    .line 191
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 192
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-static {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$2(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManagerFactory;->create()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;

    move-result-object v2

    .line 193
    .local v2, "tempFileManager":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 194
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 195
    .local v0, "session":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;
    :goto_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 216
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 217
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->socketsafeClose(Ljava/net/Socket;)V

    .line 218
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v1, v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->asyncRunner:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;)V

    .line 220
    .end local v0    # "session":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    :goto_1
    return-void

    .line 197
    .restart local v0    # "session":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;
    .restart local v2    # "tempFileManager":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "session":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$TempFileManager;
    :catch_0
    move-exception v6

    .line 208
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    instance-of v1, v6, Ljava/net/SocketException;

    if-eqz v1, :cond_1

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_1
    instance-of v1, v6, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_2

    .line 211
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$1()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Communication with the client broken"

    invoke-virtual {v1, v3, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_2
    invoke-static {v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 216
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 217
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->socketsafeClose(Ljava/net/Socket;)V

    .line 218
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v1, v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->asyncRunner:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;)V

    goto :goto_1

    .line 214
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 215
    invoke-static {v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 216
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$0(Ljava/io/Closeable;)V

    .line 217
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->socketsafeClose(Ljava/net/Socket;)V

    .line 218
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    iget-object v3, v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->asyncRunner:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v3, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$ClientHandler;)V

    .line 219
    throw v1
.end method

.method public socketsafeClose(Ljava/net/Socket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->access$1()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "++++ httpserver socket Close"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
