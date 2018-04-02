.class public Lcom/qiniu/utils/InputStreamAt$UriInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/InputStreamAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriInfo"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private is:Ljava/io/InputStream;

.field private length:J

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->length:J

    .line 364
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->context:Landroid/content/Context;

    .line 365
    iput-object p2, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    .line 366
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->build()V

    .line 367
    return-void
.end method

.method private build()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->tryContentFile(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->tryContentField()V

    .line 372
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->checkContent()V

    .line 378
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->tryContentFile(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private checkContent()V
    .locals 11

    .prologue
    .line 421
    const-string v1, "content"

    iget-object v3, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    const/4 v9, 0x0

    .line 424
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 427
    .local v2, "col":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 428
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 430
    .local v6, "cc":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_5

    .line 431
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "colName":Ljava/lang/String;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "colValue":Ljava/lang/String;
    const-string v1, "_display_name"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iput-object v8, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->name:Ljava/lang/String;

    .line 430
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const-string v1, "_size"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 445
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "col":[Ljava/lang/String;
    .end local v6    # "cc":I
    .end local v7    # "colName":Ljava/lang/String;
    .end local v8    # "colValue":Ljava/lang/String;
    .end local v10    # "i":I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    .line 447
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :cond_2
    :goto_2
    throw v1

    .line 437
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "col":[Ljava/lang/String;
    .restart local v6    # "cc":I
    .restart local v7    # "colName":Ljava/lang/String;
    .restart local v8    # "colValue":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_3
    :try_start_2
    const-string v1, "mime_type"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    iput-object v8, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->mimeType:Ljava/lang/String;

    goto :goto_1

    .line 439
    :cond_4
    const-string v1, "_data"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iput-object v8, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->path:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 445
    .end local v6    # "cc":I
    .end local v7    # "colName":Ljava/lang/String;
    .end local v8    # "colValue":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_5
    if-eqz v9, :cond_6

    .line 447
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 454
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "col":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_3
    return-void

    .line 448
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "col":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_3

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "col":[Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private genContentIs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    .line 418
    return-void
.end method

.method private hasFile()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryContentField()V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->name:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->length:J

    .line 412
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->path:Ljava/lang/String;

    .line 414
    :cond_0
    return-void
.end method

.method private tryContentFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 394
    if-eqz p1, :cond_0

    .line 395
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "/mnt"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "/mnt/"

    aput-object v4, v1, v3

    .line 396
    .local v1, "ps":[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 398
    .local v0, "p":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_1
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->hasFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "ps":[Ljava/lang/String;
    :cond_0
    return-void

    .line 396
    .restart local v0    # "p":Ljava/lang/String;
    .restart local v1    # "ps":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    .line 464
    return-void

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getIs()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->genContentIs()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInfo;->length:J

    return-wide v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->close()V

    .line 386
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->genContentIs()V

    .line 387
    return-void
.end method
