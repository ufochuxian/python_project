.class public Lorg/cybergarage/http/HTTPSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 107
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 108
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 46
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 47
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->open()Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .param p1, "socket"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 107
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 108
    iput-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 55
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 56
    invoke-direct {p1}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static append([B[B)[B
    .locals 4
    .param p0, "org"    # [B
    .param p1, "to"    # [B

    .prologue
    const/4 v3, 0x0

    .line 174
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 175
    .local v0, "newByte":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 2
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "length"    # I

    .prologue
    .line 183
    new-array v0, p2, [B

    .line 184
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    return-object v0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private post(Lorg/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .locals 21
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/cybergarage/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 244
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 248
    .local v8, "out":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 251
    const-string v13, "\r\n"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 253
    if-eqz p7, :cond_0

    .line 255
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 256
    const/4 v13, 0x1

    .line 299
    :goto_0
    return v13

    .line 259
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->isChunked()Z

    move-result v7

    .line 261
    .local v7, "isChunkedResponse":Z
    const-wide/16 v16, 0x0

    cmp-long v13, v16, p3

    if-gez v13, :cond_1

    .line 262
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 264
    :cond_1
    invoke-static {}, Lorg/cybergarage/http/HTTP;->getChunkSize()I

    move-result v5

    .line 265
    .local v5, "chunkSize":I
    new-array v9, v5, [B

    .line 266
    .local v9, "readBuf":[B
    const-wide/16 v10, 0x0

    .line 267
    .local v10, "readCnt":J
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v13, v16, p5

    if-gez v13, :cond_4

    int-to-long v14, v5

    .line 268
    .local v14, "readSize":J
    :goto_1
    const/4 v13, 0x0

    long-to-int v0, v14

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v9, v13, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 269
    .local v12, "readLen":I
    :goto_2
    if-lez v12, :cond_2

    cmp-long v13, v10, p5

    if-ltz v13, :cond_5

    .line 286
    :cond_2
    if-eqz v7, :cond_3

    .line 288
    const-string v13, "0"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 289
    const-string v13, "\r\n"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 292
    :cond_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 299
    const/4 v13, 0x1

    goto :goto_0

    .end local v12    # "readLen":I
    .end local v14    # "readSize":J
    :cond_4
    move-wide/from16 v14, p5

    .line 267
    goto :goto_1

    .line 271
    .restart local v12    # "readLen":I
    .restart local v14    # "readSize":J
    :cond_5
    if-eqz v7, :cond_6

    .line 274
    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 276
    const-string v13, "\r\n"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 278
    .end local v4    # "chunSizeBuf":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v8, v9, v13, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 279
    if-eqz v7, :cond_7

    .line 280
    const-string v13, "\r\n"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 281
    :cond_7
    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 282
    int-to-long v0, v5

    move-wide/from16 v16, v0

    sub-long v18, p5, v10

    cmp-long v13, v16, v18

    if-gez v13, :cond_8

    int-to-long v14, v5

    .line 283
    :goto_3
    const/4 v13, 0x0

    long-to-int v0, v14

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v9, v13, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_2

    .line 282
    :cond_8
    sub-long v14, p5, v10

    goto :goto_3

    .line 293
    .end local v5    # "chunkSize":I
    .end local v7    # "isChunkedResponse":Z
    .end local v9    # "readBuf":[B
    .end local v10    # "readCnt":J
    .end local v12    # "readLen":I
    .end local v14    # "readSize":J
    :catch_0
    move-exception v6

    .line 295
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 296
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private post(Lorg/cybergarage/http/HTTPResponse;[BJJZ)Z
    .locals 9
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;
    .param p2, "content"    # [B
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    const/4 v5, 0x1

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/cybergarage/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 197
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 202
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 203
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/cybergarage/http/HTTPSocket;->append([B[B)[B

    move-result-object v4

    .line 205
    .local v4, "resp":[B
    if-eqz p7, :cond_0

    .line 207
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 208
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 236
    .end local v4    # "resp":[B
    :goto_0
    return v5

    .line 212
    .restart local v4    # "resp":[B
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->isChunked()Z

    move-result v2

    .line 214
    .local v2, "isChunkedResponse":Z
    if-eqz v2, :cond_1

    .line 217
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "chunSizeBuf":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/cybergarage/http/HTTPSocket;->append([B[B)[B

    move-result-object v4

    .line 221
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_1
    long-to-int v6, p3

    long-to-int v7, p5

    invoke-static {p2, v6, v7}, Lorg/cybergarage/http/HTTPSocket;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/cybergarage/http/HTTPSocket;->append([B[B)[B

    move-result-object v4

    .line 223
    if-eqz v2, :cond_2

    .line 225
    const-string v6, "\r\n0\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/cybergarage/http/HTTPSocket;->append([B[B)[B

    move-result-object v4

    .line 228
    :cond_2
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 229
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v2    # "isChunkedResponse":Z
    .end local v4    # "resp":[B
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 113
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 123
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 74
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->close()Z

    .line 63
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 137
    .local v1, "sock":Ljava/net/Socket;
    if-nez v1, :cond_0

    .line 149
    :goto_0
    return v2

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 143
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v2, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/http/HTTPResponse;JJZ)Z
    .locals 10
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;
    .param p2, "contentOffset"    # J
    .param p4, "contentLength"    # J
    .param p6, "isOnlyHeader"    # Z

    .prologue
    .line 305
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPResponse;->getContent()[B

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;[BJJZ)Z

    move-result v0

    goto :goto_0
.end method
