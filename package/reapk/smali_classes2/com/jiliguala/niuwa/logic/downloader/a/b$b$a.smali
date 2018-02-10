.class Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

.field private b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

.field private c:Lcom/jiliguala/niuwa/logic/downloader/c/c;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;Lcom/jiliguala/niuwa/logic/downloader/c/c;)V
    .locals 0
    .param p2, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/logic/downloader/c/c;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .line 299
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->c:Lcom/jiliguala/niuwa/logic/downloader/c/c;

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 306
    .local v5, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 308
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->realUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 309
    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v10, v10, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v10, v10, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->end:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->dlLocalFile:Ljava/io/File;

    const-string v9, "rwd"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xce

    if-ne v8, v9, :cond_a

    .line 313
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;)V

    .line 316
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 317
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 318
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->end:I

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    sub-int v7, v8, v9

    .line 319
    .local v7, "total":I
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 321
    .local v0, "b":[B
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->b(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-eq v4, v11, :cond_6

    .line 322
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 323
    iget v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->d:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->d:I

    .line 324
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->c:Lcom/jiliguala/niuwa/logic/downloader/c/c;

    invoke-interface {v8, v4}, Lcom/jiliguala/niuwa/logic/downloader/c/c;->a(I)V

    .line 325
    iget v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->d:I

    if-lt v8, v7, :cond_1

    .line 326
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    .end local v0    # "b":[B
    .end local v4    # "len":I
    .end local v7    # "total":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 344
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->e(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 345
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    iget v10, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->d:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    .line 346
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    :cond_2
    if-eqz v3, :cond_3

    .line 351
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 353
    :cond_3
    if-eqz v5, :cond_4

    .line 354
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 359
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 360
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    :cond_5
    :goto_3
    return-void

    .line 329
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "b":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "total":I
    :cond_6
    :try_start_4
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->b(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->e(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 330
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    iget v10, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->d:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    .line 331
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    .end local v0    # "b":[B
    .end local v7    # "total":I
    :cond_7
    if-eqz v3, :cond_8

    .line 351
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 353
    :cond_8
    if-eqz v6, :cond_9

    .line 354
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 359
    :cond_9
    :goto_4
    if-eqz v1, :cond_e

    .line 360
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 333
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_a
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_7

    .line 334
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 335
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->b:Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 336
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 338
    .restart local v0    # "b":[B
    :goto_5
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->b(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .restart local v4    # "len":I
    if-eq v4, v11, :cond_7

    .line 339
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 340
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;->c:Lcom/jiliguala/niuwa/logic/downloader/c/c;

    invoke-interface {v8, v4}, Lcom/jiliguala/niuwa/logic/downloader/c/c;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 349
    .end local v0    # "b":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v8

    move-object v5, v6

    .line 350
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_6
    if-eqz v3, :cond_b

    .line 351
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 353
    :cond_b
    if-eqz v5, :cond_c

    .line 354
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 359
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 360
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v8

    .line 356
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 357
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 356
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .line 357
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 357
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_6

    .line 343
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_e
    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method
