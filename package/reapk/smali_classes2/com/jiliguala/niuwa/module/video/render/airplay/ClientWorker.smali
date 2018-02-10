.class public Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientWorker"


# instance fields
.field private id:I

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "id"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->socket:Ljava/net/Socket;

    .line 41
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->id:I

    .line 42
    return-void
.end method

.method private closeClientSocket(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private closeClientSocket(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;)Z
    .locals 6
    .param p1, "head"    # Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;

    .prologue
    const/4 v1, 0x1

    .line 325
    if-nez p1, :cond_1

    .line 341
    :cond_0
    return v1

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "result":Z
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "value":Ljava/lang/String;
    const-string v4, "connection"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    const-string v4, "close"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDateHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 393
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDateHeader(J)Ljava/lang/String;
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 386
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 387
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getServerHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "DroidPlay/0.2.4 (Android)"

    return-object v0
.end method

.method private handle400(Ljava/net/Socket;Z)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "close"    # Z

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "HTTP/1.1 400 Bad Request"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getServerHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v3, "Content-Length: 0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    if-eqz p2, :cond_2

    .line 118
    const-string v3, "Connection: close"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 130
    :cond_0
    if-eqz p2, :cond_6

    .line 131
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 134
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    return-void

    .line 120
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2
    :try_start_2
    const-string v3, "Connection: keep-alive"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 125
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 130
    :cond_3
    if-eqz p2, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 130
    :cond_4
    if-eqz p2, :cond_5

    .line 131
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    :cond_5
    throw v3

    .line 127
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 123
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_6
    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private handle403(Ljava/net/Socket;Z)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "close"    # Z

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "HTTP/1.1 403 Forbidden"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getServerHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v3, "Content-Length: 0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_2

    .line 145
    const-string v3, "Connection: close"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 157
    :cond_0
    if-eqz p2, :cond_6

    .line 158
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 161
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    return-void

    .line 147
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2
    :try_start_2
    const-string v3, "Connection: keep-alive"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 152
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v1, :cond_3

    .line 155
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 157
    :cond_3
    if-eqz p2, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_4

    .line 155
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 157
    :cond_4
    if-eqz p2, :cond_5

    .line 158
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    :cond_5
    throw v3

    .line 154
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 150
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_6
    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private handle404(Ljava/net/Socket;Z)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "close"    # Z

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "HTTP/1.1 404 Not Found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getServerHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string v3, "Content-Length: 0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    if-eqz p2, :cond_2

    .line 172
    const-string v3, "Connection: close"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 184
    :cond_0
    if-eqz p2, :cond_6

    .line 185
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    move-object v1, v2

    .line 188
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    return-void

    .line 174
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2
    :try_start_2
    const-string v3, "Connection: keep-alive"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 179
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 184
    :cond_3
    if-eqz p2, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 184
    :cond_4
    if-eqz p2, :cond_5

    .line 185
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    :cond_5
    throw v3

    .line 181
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 177
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_6
    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private handleDownload(Ljava/net/Socket;Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;Z)V
    .locals 26
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "head"    # Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    .param p3, "close"    # Z

    .prologue
    .line 193
    :try_start_0
    new-instance v19, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getUri()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xa

    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v8, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v19, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->handle404(Ljava/net/Socket;Z)V

    .line 322
    .end local v14    # "file":Ljava/io/File;
    .end local v19    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v11

    .line 197
    .local v11, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->handle400(Ljava/net/Socket;Z)V

    goto :goto_0

    .line 207
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v19    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->handle403(Ljava/net/Socket;Z)V

    goto :goto_0

    .line 213
    :cond_2
    const-wide/16 v6, -0x1

    .line 214
    .local v6, "start":J
    const-wide/16 v12, -0x1

    .line 215
    .local v12, "end":J
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v8, "Range"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 216
    .local v20, "range":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 217
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->parseRangeRequestHeader(Ljava/lang/String;J)[J

    move-result-object v16

    .line 218
    .local v16, "l":[J
    if-eqz v16, :cond_3

    .line 219
    const/4 v5, 0x0

    aget-wide v6, v16, v5

    .line 220
    const/4 v5, 0x1

    aget-wide v12, v16, v5

    .line 225
    .end local v16    # "l":[J
    :cond_3
    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    const-wide/16 v8, -0x1

    cmp-long v5, v12, v8

    if-eqz v5, :cond_9

    .line 227
    const/16 v17, 0x0

    .line 229
    .local v17, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v18, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .local v18, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    const-string v5, "HTTP/1.1 206 Partial Content\n"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 231
    const-string v5, "Date"

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 232
    const-string v5, "Last-Modified"

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 233
    const-string v5, "Server"

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getServerHeader()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 234
    const-string v5, "Accept-Ranges"

    const-string v8, "bytes"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 235
    const-string v5, "Content-Length"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v22, v12, v6

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 236
    const-string v5, "Content-Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 237
    const-string v5, "Content-Type"

    const-string v8, "video/mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 238
    if-eqz p3, :cond_5

    .line 239
    const-string v5, "Connection"

    const-string v8, "close"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 243
    :goto_1
    const-string v5, "Cache-Control"

    const-string v8, "private, max-age=0"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 244
    const-string v5, "\n"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 245
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 246
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    sub-long v8, v12, v6

    const-wide/16 v22, 0x1

    add-long v8, v8, v22

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    .line 247
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    invoke-static/range {v18 .. v18}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v21

    .line 248
    .local v21, "wbc":Ljava/nio/channels/WritableByteChannel;
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 249
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 254
    if-eqz v18, :cond_4

    .line 256
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 262
    :cond_4
    :goto_2
    if-eqz p3, :cond_13

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 241
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    :try_start_4
    const-string v5, "Connection"

    const-string v8, "keep-alive"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 250
    :catch_1
    move-exception v11

    move-object/from16 v17, v18

    .line 252
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_5
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    if-eqz v17, :cond_6

    .line 256
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 262
    :cond_6
    :goto_4
    if-eqz p3, :cond_0

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    goto/16 :goto_0

    .line 257
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :catch_2
    move-exception v11

    .line 259
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    .line 257
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v11

    .line 259
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4

    .line 254
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v17, :cond_7

    .line 256
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 262
    :cond_7
    :goto_6
    if-eqz p3, :cond_8

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    :cond_8
    throw v5

    .line 257
    :catch_4
    move-exception v11

    .line 259
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_6

    .line 269
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    :cond_9
    const/16 v17, 0x0

    .line 270
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    const/4 v15, 0x0

    .line 272
    .local v15, "in":Ljava/io/BufferedInputStream;
    :try_start_8
    new-instance v18, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 273
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :try_start_9
    const-string v5, "HTTP/1.1 200 OK\n"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 274
    const-string v5, "Date"

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 275
    const-string v5, "Last-Modified"

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getDateHeader(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 276
    const-string v5, "Server"

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->getServerHeader()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 277
    const-string v5, "Accept-Ranges"

    const-string v8, "bytes"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 278
    const-string v5, "Content-Length"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 279
    const-string v5, "Content-Type"

    const-string v8, "video/mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 280
    if-eqz p3, :cond_c

    .line 281
    const-string v5, "Connection"

    const-string v8, "close"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 285
    :goto_7
    const-string v5, "Cache-Control"

    const-string v8, "private, max-age=0"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 286
    const-string v5, "\n"

    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 287
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 288
    .restart local v4    # "fc":Ljava/nio/channels/FileChannel;
    const v5, 0x8000

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 289
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    invoke-static/range {v18 .. v18}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v21

    .line 290
    .restart local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :goto_8
    invoke-virtual {v4, v10}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_10

    .line 291
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 293
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    .line 296
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :catch_5
    move-exception v11

    move-object/from16 v17, v18

    .line 298
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :goto_9
    :try_start_a
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 300
    if-eqz v15, :cond_a

    .line 302
    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 308
    :cond_a
    :goto_a
    if-eqz v17, :cond_b

    .line 310
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 316
    :cond_b
    :goto_b
    if-eqz p3, :cond_0

    .line 317
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    goto/16 :goto_0

    .line 283
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :cond_c
    :try_start_d
    const-string v5, "Connection"

    const-string v8, "keep-alive"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v8, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_7

    .line 300
    :catchall_1
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :goto_c
    if-eqz v15, :cond_d

    .line 302
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 308
    :cond_d
    :goto_d
    if-eqz v17, :cond_e

    .line 310
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 316
    :cond_e
    :goto_e
    if-eqz p3, :cond_f

    .line 317
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    :cond_f
    throw v5

    .line 295
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :cond_10
    :try_start_10
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 300
    if-eqz v15, :cond_11

    .line 302
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 308
    :cond_11
    :goto_f
    if-eqz v18, :cond_12

    .line 310
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 316
    :cond_12
    :goto_10
    if-eqz p3, :cond_13

    .line 317
    invoke-direct/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Ljava/net/Socket;)V

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 303
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v11

    .line 305
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_f

    .line 311
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 313
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_10

    .line 303
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v11

    .line 305
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_a

    .line 311
    :catch_9
    move-exception v11

    .line 313
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_b

    .line 303
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v11

    .line 305
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d

    .line 311
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v11

    .line 313
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_e

    .line 300
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    goto :goto_c

    .line 296
    :catch_c
    move-exception v11

    goto :goto_9

    .line 254
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .line 250
    :catch_d
    move-exception v11

    goto/16 :goto_3

    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :cond_13
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0
.end method

.method private static isHeadTerminated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseRangeRequestHeader(Ljava/lang/String;J)[J
    .locals 8
    .param p1, "range"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 347
    if-eqz p1, :cond_4

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 349
    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "s":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 352
    const/4 v6, 0x0

    .line 370
    .end local v2    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 353
    .restart local v2    # "i":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 354
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v4, p2, v6

    .line 355
    .local v4, "start":J
    const-wide/16 v6, 0x1

    sub-long v0, p2, v6

    .line 356
    .local v0, "end":J
    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v7, 0x1

    aput-wide v0, v6, v7

    goto :goto_0

    .line 357
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    .line 358
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 359
    .restart local v4    # "start":J
    const-wide/16 v6, 0x1

    sub-long v0, p2, v6

    .line 360
    .restart local v0    # "end":J
    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v7, 0x1

    aput-wide v0, v6, v7

    goto :goto_0

    .line 362
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 363
    .restart local v4    # "start":J
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 364
    .restart local v0    # "end":J
    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v7, 0x1

    aput-wide v0, v6, v7

    goto :goto_0

    .line 367
    .end local v0    # "end":J
    .end local v2    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "start":J
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 370
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 382
    return-void
.end method


# virtual methods
.method public parseHead(Ljava/io/InputStream;)Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    :try_start_0
    new-instance v2, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;-><init>()V

    .line 82
    .local v2, "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 85
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->isHeadTerminated(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 86
    if-nez v3, :cond_1

    .line 87
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, " "

    invoke-direct {v7, v5, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 89
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->setMethod(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->setUri(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->setProtocol(Ljava/lang/String;)V

    .line 101
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, "j":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 96
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;->getHeaders()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method public run()V
    .locals 5

    .prologue
    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->parseHead(Ljava/io/InputStream;)Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;

    move-result-object v2

    .line 55
    .local v2, "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    if-nez v2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->handle400(Ljava/net/Socket;Z)V

    .line 65
    .end local v2    # "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    :goto_0
    return-void

    .line 59
    .restart local v2    # "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    :cond_0
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->closeClientSocket(Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;)Z

    move-result v0

    .line 60
    .local v0, "close":Z
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->socket:Ljava/net/Socket;

    invoke-direct {p0, v3, v2, v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/ClientWorker;->handleDownload(Ljava/net/Socket;Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "close":Z
    .end local v2    # "head":Lcom/jiliguala/niuwa/module/video/render/airplay/HttpHead;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
