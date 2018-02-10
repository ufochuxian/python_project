.class public Lorg/cybergarage/upnp/std/av/server/ServerRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeInstance(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V
    .locals 4
    .param p0, "server"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Server started, Hit Enter to stop.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    :try_start_1
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :goto_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->stop()V

    .line 39
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Server stopped.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t start server:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 34
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 2
    .param p0, "serverClass"    # Ljava/lang/Class;

    .prologue
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/ServerRunner;->executeInstance(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
