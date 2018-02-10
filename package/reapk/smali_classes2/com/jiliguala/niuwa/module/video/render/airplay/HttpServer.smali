.class public Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpServer"


# instance fields
.field private esClient:Ljava/util/concurrent/ExecutorService;

.field private esServer:Ljava/util/concurrent/ExecutorService;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->esServer:Ljava/util/concurrent/ExecutorService;

    .line 24
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->esClient:Ljava/util/concurrent/ExecutorService;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->esClient:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public startServer(I)V
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->esServer:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;Ljava/net/ServerSocket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 47
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
