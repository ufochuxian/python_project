.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeInstance(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)V
    .locals 4
    .param p0, "server"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "++++httpserver Server started, Hit Enter to stop.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :try_start_1
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->stop()V

    .line 69
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "++++httpserver Server stopped.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++++httpserver Couldn\'t start server:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 64
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "serverClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;

    invoke-static {v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;->executeInstance(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "++++httpserver Cound nor create server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
