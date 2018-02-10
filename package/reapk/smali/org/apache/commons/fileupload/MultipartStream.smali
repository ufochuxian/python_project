.class public Lorg/apache/commons/fileupload/MultipartStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;,
        Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;,
        Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
        Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    }
.end annotation


# static fields
.field protected static final BOUNDARY_PREFIX:[B

.field public static final CR:B = 0xdt

.field public static final DASH:B = 0x2dt

.field protected static final DEFAULT_BUFSIZE:I = 0x1000

.field protected static final FIELD_SEPARATOR:[B

.field public static final HEADER_PART_SIZE_MAX:I = 0x2800

.field protected static final HEADER_SEPARATOR:[B

.field public static final LF:B = 0xat

.field protected static final STREAM_TERMINATOR:[B


# instance fields
.field private boundary:[B

.field private boundaryLength:I

.field private final bufSize:I

.field private final buffer:[B

.field private head:I

.field private headerEncoding:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private keepRegion:I

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 190
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    .line 196
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    .line 202
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    .line 207
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    return-void

    .line 190
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    .line 196
    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 202
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data

    .line 207
    nop

    :array_3
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I
    .param p4, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    if-nez p2, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    array-length v0, p2

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 331
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/lit8 v0, v0, 0x1

    if-ge p3, v0, :cond_1

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 333
    const-string v1, "The buffer size specified for the MultipartStream is too small"

    .line 332
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    .line 337
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    .line 338
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    .line 339
    iput-object p4, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 341
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    .line 342
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    .line 344
    sget-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    .line 345
    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    .line 344
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    .line 347
    array-length v2, p2

    .line 346
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 350
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 351
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .prologue
    .line 367
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 368
    return-void
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return v0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$2(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    return v0
.end method

.method static synthetic access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V
    .locals 0

    .prologue
    .line 247
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return-void
.end method

.method static synthetic access$5(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$6(Lorg/apache/commons/fileupload/MultipartStream;I)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return-void
.end method

.method static synthetic access$7(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    return v0
.end method

.method static synthetic access$8(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    return-object v0
.end method

.method public static arrayequals([B[BI)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "count"    # I

    .prologue
    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 669
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 665
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 666
    const/4 v1, 0x0

    goto :goto_1

    .line 664
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public discardBodyData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/fileupload/MultipartStream;->readBodyData(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method protected findByte(BI)I
    .locals 2
    .param p1, "value"    # B
    .param p2, "pos"    # I

    .prologue
    .line 684
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-lt v0, v1, :cond_1

    .line 690
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 685
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findSeparator()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "match":I
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sub-int v2, v4, v5

    .line 705
    .local v2, "maxpos":I
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .local v0, "first":I
    :goto_0
    if-gt v0, v2, :cond_0

    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-ne v1, v4, :cond_2

    .line 716
    :cond_0
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-ne v1, v4, :cond_1

    .line 717
    add-int/lit8 v3, v0, -0x1

    .line 719
    :cond_1
    return v3

    .line 706
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/fileupload/MultipartStream;->findByte(BI)I

    move-result v0

    .line 707
    if-eq v0, v3, :cond_1

    if-gt v0, v2, :cond_1

    .line 710
    const/4 v1, 0x1

    :goto_1
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-lt v1, v4, :cond_4

    .line 705
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    add-int v5, v0, v1

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_3

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;-><init>(Lorg/apache/commons/fileupload/MultipartStream;)V

    return-object v0
.end method

.method public readBodyData(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    move-result-object v0

    .line 593
    .local v0, "istream":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public readBoundary()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;,
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 448
    new-array v1, v4, [B

    .line 449
    .local v1, "marker":[B
    const/4 v2, 0x0

    .line 451
    .local v2, "nextChunk":Z
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 453
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v5

    aput-byte v5, v1, v4

    .line 454
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 479
    :goto_0
    return v3

    .line 464
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    .line 465
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 479
    goto :goto_0

    .line 467
    :cond_1
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    const/4 v2, 0x1

    .line 469
    goto :goto_1

    .line 470
    :cond_2
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    .line 471
    const-string v4, "Unexpected characters follow a boundary"

    .line 470
    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    throw v0

    .line 476
    .end local v0    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :catch_1
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-ne v0, v1, :cond_1

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 423
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 424
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 426
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more data is available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteBytesRead(I)V

    .line 432
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readHeaders()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;,
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2800

    .line 528
    const/4 v4, 0x0

    .line 531
    .local v4, "i":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 532
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 533
    .local v5, "size":I
    :goto_0
    sget-object v6, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    array-length v6, v6

    if-lt v4, v6, :cond_0

    .line 555
    const/4 v3, 0x0

    .line 556
    .local v3, "headers":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 558
    :try_start_0
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 568
    :goto_1
    return-object v3

    .line 535
    .end local v3    # "headers":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B
    :try_end_1
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 542
    .local v0, "b":B
    add-int/lit8 v5, v5, 0x1

    if-le v5, v10, :cond_1

    .line 543
    new-instance v6, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    .line 544
    const-string v7, "Header section has more than %s bytes (maybe it is not properly terminated)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 545
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 544
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 543
    invoke-direct {v6, v7}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 536
    .end local v0    # "b":B
    :catch_0
    move-exception v2

    .line 538
    .local v2, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    throw v2

    .line 539
    .end local v2    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :catch_1
    move-exception v2

    .line 540
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v7, "Stream ended unexpectedly"

    invoke-direct {v6, v7}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 547
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":B
    :cond_1
    sget-object v6, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    aget-byte v6, v6, v4

    if-ne v0, v6, :cond_2

    .line 548
    add-int/lit8 v4, v4, 0x1

    .line 552
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 550
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 559
    .end local v0    # "b":B
    .restart local v3    # "headers":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 562
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    goto :goto_1

    .line 565
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setBoundary([B)V
    .locals 4
    .param p1, "boundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;
        }
    .end annotation

    .prologue
    .line 503
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 504
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;

    .line 505
    const-string v1, "The length of a boundary token can not be changed"

    .line 504
    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    .line 508
    array-length v3, p1

    .line 507
    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    return-void
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public skipPreamble()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 630
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z
    :try_end_0
    .catch Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 643
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v2, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 645
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v3, v2

    .line 646
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    .line 640
    :goto_0
    return v1

    .line 639
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v1, v1

    iput v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 645
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v1, v2

    .line 646
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v1, v7

    move v1, v2

    .line 640
    goto :goto_0

    .line 641
    .end local v0    # "e":Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    :catchall_0
    move-exception v1

    .line 643
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v2, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 645
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v3, v2

    .line 646
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    .line 647
    throw v1
.end method
