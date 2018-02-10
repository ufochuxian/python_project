.class public abstract Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultAsyncRunner;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$SessionStateListener;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;,
        Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;
    }
.end annotation


# static fields
.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field private static final TAG:Ljava/lang/String; = "NanoHTTPD"


# instance fields
.field private asyncRunner:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field protected mCDS:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

.field protected mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

.field private final myPort:I

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private tempFileManagerFactory:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mCDS:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 88
    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 108
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 109
    iput p2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myPort:I

    .line 110
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;

    invoke-direct {v0, p0, v1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->setTempFileManagerFactory(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;)V

    .line 111
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->setAsyncRunner(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;)V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->tempFileManagerFactory:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->asyncRunner:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;

    return-object v0
.end method


# virtual methods
.method protected decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_1

    .line 243
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 260
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    return-object v1

    .line 246
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 248
    .local v4, "sep":I
    if-ltz v4, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    if-ltz v4, :cond_5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    .line 256
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 253
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 210
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract serve(Ljava/lang/String;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;"
        }
    .end annotation
.end method

.method public setAsyncRunner(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->asyncRunner:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;

    .line 308
    return-void
.end method

.method public setCDS(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V
    .locals 0
    .param p1, "cds"    # Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mCDS:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 266
    return-void
.end method

.method public setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 0
    .param p1, "server"    # Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 93
    return-void
.end method

.method public setTempFileManagerFactory(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->tempFileManagerFactory:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;

    .line 361
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 123
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->hostname:Ljava/lang/String;

    iget v3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 172
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
