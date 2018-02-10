.class public Lorg/apache/commons/fileupload/disk/DiskFileItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItem;


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final UID:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1f0d7226839a8871L


# instance fields
.field private cachedContent:[B

.field private final contentType:Ljava/lang/String;

.field private transient dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

.field private dfosFile:Ljava/io/File;

.field private fieldName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private headers:Lorg/apache/commons/fileupload/FileItemHeaders;

.field private isFormField:Z

.field private final repository:Ljava/io/File;

.field private size:J

.field private final sizeThreshold:I

.field private transient tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 99
    sput-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->UID:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/io/File;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "isFormField"    # Z
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "sizeThreshold"    # I
    .param p6, "repository"    # Ljava/io/File;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->size:J

    .line 192
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->fieldName:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->contentType:Ljava/lang/String;

    .line 194
    iput-boolean p3, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isFormField:Z

    .line 195
    iput-object p4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->fileName:Ljava/lang/String;

    .line 196
    iput p5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->sizeThreshold:I

    .line 197
    iput-object p6, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    .line 198
    return-void
.end method

.method private static getUniqueId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 601
    const v2, 0x5f5e100

    .line 602
    .local v2, "limit":I
    sget-object v3, Lorg/apache/commons/fileupload/disk/DiskFileItem;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 603
    .local v0, "current":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "id":Ljava/lang/String;
    const v3, 0x5f5e100

    if-ge v0, v3, :cond_0

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00000000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    :cond_0
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 658
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 665
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    new-instance v2, Ljava/io/IOException;

    .line 670
    const-string v3, "The repository [%s] contains a null character"

    new-array v4, v4, [Ljava/lang/Object;

    .line 671
    iget-object v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 669
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 675
    const-string v3, "The repository [%s] is not a directory"

    new-array v4, v4, [Ljava/lang/Object;

    .line 676
    iget-object v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 674
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 681
    .local v1, "output":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 689
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 691
    iput-object v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 692
    return-void

    .line 684
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfosFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 685
    .local v0, "input":Ljava/io/FileInputStream;
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 686
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfosFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 687
    iput-object v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfosFile:Ljava/io/File;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 644
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 645
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 640
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfosFile:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 456
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 457
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v0

    .line 458
    .local v0, "outputFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 461
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 563
    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v0

    .line 565
    .local v0, "outputFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 568
    :cond_0
    return-void
.end method

.method public get()[B
    .locals 6

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    iget-object v4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    if-nez v4, :cond_0

    .line 305
    iget-object v4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v4}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getData()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 307
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 328
    :cond_1
    :goto_0
    return-object v1

    .line 310
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v1, v4, [B

    .line 311
    .local v1, "fileData":[B
    const/4 v2, 0x0

    .line 314
    .local v2, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v5}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v2    # "fis":Ljava/io/InputStream;
    .local v3, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    if-eqz v3, :cond_4

    .line 321
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 322
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    .line 319
    if-eqz v2, :cond_1

    .line 321
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 322
    :catch_1
    move-exception v4

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 319
    :goto_2
    if-eqz v2, :cond_3

    .line 321
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 326
    :cond_3
    :goto_3
    throw v4

    .line 322
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 318
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_2

    .line 316
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :cond_4
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    new-instance v1, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 243
    .local v1, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getContentType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v0

    .line 246
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "charset"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lorg/apache/commons/fileupload/FileItemHeaders;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 220
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    .line 220
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/fileupload/util/Streams;->checkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 529
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lorg/apache/commons/io/output/DeferredFileOutputStream;

    iget v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->sizeThreshold:I

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;)V

    iput-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    .line 531
    .end local v0    # "outputFile":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    return-object v1
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 285
    iget-wide v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->size:J

    .line 291
    :goto_0
    return-wide v0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getData()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStoreLocation()Ljava/io/File;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->getFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v2

    .line 359
    .local v2, "rawdata":[B
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 361
    const-string v0, "ISO-8859-1"

    .line 364
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-object v3

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected getTempFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 579
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->tempFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 580
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->repository:Ljava/io/File;

    .line 581
    .local v0, "tempDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/io/File;

    .end local v0    # "tempDir":Ljava/io/File;
    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v0    # "tempDir":Ljava/io/File;
    :cond_0
    const-string v2, "upload_%s_%s.tmp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/commons/fileupload/disk/DiskFileItem;->UID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "tempFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->tempFile:Ljava/io/File;

    .line 589
    .end local v0    # "tempDir":Ljava/io/File;
    .end local v1    # "tempFileName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->tempFile:Ljava/io/File;

    return-object v2
.end method

.method public isFormField()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isFormField:Z

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->cachedContent:[B

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->dfos:Lorg/apache/commons/io/output/DeferredFileOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    goto :goto_0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->fieldName:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setFormField(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isFormField:Z

    .line 514
    return-void
.end method

.method public setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V
    .locals 0
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 707
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 708
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 620
    const-string v0, "name=%s, StoreLocation=%s, size=%s bytes, isFormField=%s, FieldName=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 621
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isFormField()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getFieldName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 620
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->isInMemory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->get()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 446
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 396
    .restart local v0    # "fout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 397
    :goto_1
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 400
    :cond_1
    throw v7

    .line 402
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getStoreLocation()Ljava/io/File;

    move-result-object v6

    .line 403
    .local v6, "outputFile":Ljava/io/File;
    if-eqz v6, :cond_6

    .line 405
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/fileupload/disk/DiskFileItem;->size:J

    .line 411
    invoke-virtual {v6, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, "in":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 415
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 416
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 415
    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 418
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 417
    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-static {v3, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 421
    if-eqz v3, :cond_3

    .line 423
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 428
    :cond_3
    :goto_2
    if-eqz v5, :cond_0

    .line 430
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v7

    goto :goto_0

    .line 420
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    .line 421
    :goto_3
    if-eqz v2, :cond_4

    .line 423
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 428
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 430
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 435
    :cond_5
    :goto_5
    throw v7

    .line 442
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    new-instance v7, Lorg/apache/commons/fileupload/FileUploadException;

    .line 443
    const-string v8, "Cannot write uploaded file to disk!"

    .line 442
    invoke-direct {v7, v8}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 424
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    goto :goto_4

    .line 431
    :catch_2
    move-exception v8

    goto :goto_5

    .line 424
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v7

    goto :goto_2

    .line 420
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 396
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "outputFile":Ljava/io/File;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v7

    move-object v0, v1

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
