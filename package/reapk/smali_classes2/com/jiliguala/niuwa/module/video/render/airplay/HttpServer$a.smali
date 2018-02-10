.class Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

.field private b:Ljava/net/ServerSocket;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;Ljava/net/ServerSocket;)V
    .locals 1
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->c:I

    .line 75
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->b:Ljava/net/ServerSocket;

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 83
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->b:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iget v4, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer$a;->c:I

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;-><init>(Ljava/net/Socket;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 89
    return-void
.end method
