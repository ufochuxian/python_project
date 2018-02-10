.class public abstract Lorg/apache/commons/fileupload/FileUploadBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;,
        Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;,
        Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;,
        Lorg/apache/commons/fileupload/FileUploadBase$IOFileUploadException;,
        Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;,
        Lorg/apache/commons/fileupload/FileUploadBase$SizeException;,
        Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;,
        Lorg/apache/commons/fileupload/FileUploadBase$UnknownSizeException;
    }
.end annotation


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-disposition"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-type"

.field public static final FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final MAX_HEADER_SIZE:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MULTIPART:Ljava/lang/String; = "multipart/"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field public static final MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"


# instance fields
.field private fileSizeMax:J

.field private headerEncoding:Ljava/lang/String;

.field private listener:Lorg/apache/commons/fileupload/ProgressListener;

.field private sizeMax:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->sizeMax:J

    .line 147
    iput-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->fileSizeMax:J

    .line 54
    return-void
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->fileSizeMax:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->sizeMax:J

    return-wide v0
.end method

.method static synthetic access$2(Lorg/apache/commons/fileupload/FileUploadBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/commons/fileupload/FileUploadBase;)Lorg/apache/commons/fileupload/ProgressListener;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    return-object v0
.end method

.method private getFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pContentDisposition"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 475
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "form-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    new-instance v2, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v2}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 477
    .local v2, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 479
    const/16 v3, 0x3b

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v1

    .line 480
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fieldName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 481
    .restart local v0    # "fieldName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 485
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "parser":Lorg/apache/commons/fileupload/ParameterParser;
    :cond_0
    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pContentDisposition"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "fileName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 432
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "cdl":Ljava/lang/String;
    const-string v4, "form-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "attachment"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    :cond_0
    new-instance v3, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v3}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 435
    .local v3, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 437
    const/16 v4, 0x3b

    invoke-virtual {v3, p1, v4}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v2

    .line 438
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "filename"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    const-string v4, "filename"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fileName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 440
    .restart local v1    # "fileName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 451
    .end local v0    # "cdl":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "parser":Lorg/apache/commons/fileupload/ParameterParser;
    :cond_1
    :goto_0
    return-object v1

    .line 446
    .restart local v0    # "cdl":Ljava/lang/String;
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "parser":Lorg/apache/commons/fileupload/ParameterParser;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static final isMultipartContent(Lorg/apache/commons/fileupload/RequestContext;)Z
    .locals 4
    .param p0, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-interface {p0}, Lorg/apache/commons/fileupload/RequestContext;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseEndOfLine(Ljava/lang/String;I)I
    .locals 4
    .param p1, "headerPart"    # Ljava/lang/String;
    .param p2, "end"    # I

    .prologue
    .line 617
    move v0, p2

    .line 619
    .local v0, "index":I
    :goto_0
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 620
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 621
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 622
    const-string v3, "Expected headers to be terminated by an empty line."

    .line 621
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 625
    return v1

    .line 627
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 618
    goto :goto_0
.end method

.method private parseHeaderLine(Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3a

    .line 637
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 638
    .local v0, "colonOffset":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 646
    :goto_0
    return-void

    .line 642
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "headerValue":Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected createItem(Ljava/util/Map;Z)Lorg/apache/commons/fileupload/FileItem;
    .locals 4
    .param p2, "isFormField"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/apache/commons/fileupload/FileItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileItemFactory()Lorg/apache/commons/fileupload/FileItemFactory;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/fileupload/FileUploadBase;->getFieldName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 521
    const-string v2, "Content-type"

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/fileupload/FileUploadBase;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {p0, p1}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-interface {v0, v1, v2, p2, v3}, Lorg/apache/commons/fileupload/FileItemFactory;->createItem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/fileupload/FileItem;

    move-result-object v0

    return-object v0
.end method

.method protected getBoundary(Ljava/lang/String;)[B
    .locals 6
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v4, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v4}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 381
    .local v4, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 383
    const/4 v5, 0x2

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {v4, p1, v5}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;[C)Ljava/util/Map;

    move-result-object v3

    .line 384
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "boundary"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, "boundaryStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    .line 391
    :cond_0
    :try_start_0
    const-string v5, "ISO-8859-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "boundary":[B
    goto :goto_0

    .line 392
    .end local v0    # "boundary":[B
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "boundary":[B
    goto :goto_0

    .line 383
    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method protected getFieldName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-disposition"

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;
    .locals 1
    .param p1, "headers"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 463
    const-string v0, "Content-disposition"

    invoke-interface {p1, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFileItemFactory()Lorg/apache/commons/fileupload/FileItemFactory;
.end method

.method protected getFileName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-disposition"

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;
    .locals 1
    .param p1, "headers"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 421
    const-string v0, "Content-disposition"

    invoke-interface {p1, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSizeMax()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->fileSizeMax:J

    return-wide v0
.end method

.method protected final getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 662
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIterator(Lorg/apache/commons/fileupload/RequestContext;)Lorg/apache/commons/fileupload/FileItemIterator;
    .locals 2
    .param p1, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    invoke-virtual {v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/fileupload/FileUploadException;

    throw v1
.end method

.method protected getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;
    .locals 9
    .param p1, "headerPart"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 540
    .local v4, "len":I
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/FileUploadBase;->newFileItemHeaders()Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;

    move-result-object v3

    .line 541
    .local v3, "headers":Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    const/4 v6, 0x0

    .line 543
    .local v6, "start":I
    :goto_0
    invoke-direct {p0, p1, v6}, Lorg/apache/commons/fileupload/FileUploadBase;->parseEndOfLine(Ljava/lang/String;I)I

    move-result v1

    .line 544
    .local v1, "end":I
    if-ne v6, v1, :cond_0

    .line 568
    return-object v3

    .line 547
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "header":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v1, 0x2

    .line 549
    :goto_1
    if-lt v6, v4, :cond_2

    .line 566
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/fileupload/FileUploadBase;->parseHeaderLine(Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_2
    move v5, v6

    .line 551
    .local v5, "nonWs":I
    :goto_2
    if-lt v5, v4, :cond_4

    .line 558
    :cond_3
    if-eq v5, v6, :cond_1

    .line 562
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/fileupload/FileUploadBase;->parseEndOfLine(Ljava/lang/String;I)I

    move-result v1

    .line 563
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    add-int/lit8 v6, v1, 0x2

    goto :goto_1

    .line 552
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 553
    .local v0, "c":C
    const/16 v7, 0x20

    if-eq v0, v7, :cond_5

    const/16 v7, 0x9

    if-ne v0, v7, :cond_3

    .line 556
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getProgressListener()Lorg/apache/commons/fileupload/ProgressListener;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    return-object v0
.end method

.method public getSizeMax()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase;->sizeMax:J

    return-wide v0
.end method

.method protected newFileItemHeaders()Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;-><init>()V

    return-object v0
.end method

.method protected parseHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "headerPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/apache/commons/fileupload/FileUploadBase;->getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;

    move-result-object v2

    .line 595
    .local v2, "headers":Lorg/apache/commons/fileupload/FileItemHeaders;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 605
    return-object v5

    .line 597
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .local v0, "headerName":Ljava/lang/String;
    invoke-interface {v2, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 599
    .local v4, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .local v1, "headerValue":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 601
    :cond_1
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public parseParameterMap(Lorg/apache/commons/fileupload/RequestContext;)Ljava/util/Map;
    .locals 7
    .param p1, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/fileupload/RequestContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/fileupload/FileItem;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/commons/fileupload/FileUploadBase;->parseRequest(Lorg/apache/commons/fileupload/RequestContext;)Ljava/util/List;

    move-result-object v2

    .line 352
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 354
    .local v3, "itemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 366
    return-object v3

    .line 354
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/fileupload/FileItem;

    .line 355
    .local v1, "fileItem":Lorg/apache/commons/fileupload/FileItem;
    invoke-interface {v1}, Lorg/apache/commons/fileupload/FileItem;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 358
    .local v4, "mappedItems":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;"
    if-nez v4, :cond_1

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "mappedItems":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .restart local v4    # "mappedItems":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;"
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public parseRequest(Lorg/apache/commons/fileupload/RequestContext;)Ljava/util/List;
    .locals 15
    .param p1, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/fileupload/RequestContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/fileupload/FileItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/fileupload/FileItem;>;"
    const/4 v9, 0x0

    .line 294
    .local v9, "successful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/fileupload/FileUploadBase;->getItemIterator(Lorg/apache/commons/fileupload/RequestContext;)Lorg/apache/commons/fileupload/FileItemIterator;

    move-result-object v8

    .line 295
    .local v8, "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileItemFactory()Lorg/apache/commons/fileupload/FileItemFactory;

    move-result-object v2

    .line 296
    .local v2, "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    if-nez v2, :cond_2

    .line 297
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "No FileItemFactory has been set."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v2    # "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    .end local v8    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/fileupload/FileUploadException;

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v1    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :catchall_0
    move-exception v10

    .line 324
    if-nez v9, :cond_0

    .line 325
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 333
    :cond_0
    throw v10

    .line 300
    .restart local v2    # "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    .restart local v8    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemIterator;->next()Lorg/apache/commons/fileupload/FileItemStream;

    move-result-object v6

    .line 302
    .local v6, "item":Lorg/apache/commons/fileupload/FileItemStream;
    move-object v0, v6

    check-cast v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    move-object v10, v0

    invoke-static {v10}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "fileName":Ljava/lang/String;
    invoke-interface {v6}, Lorg/apache/commons/fileupload/FileItemStream;->getFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/commons/fileupload/FileItemStream;->getContentType()Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-interface {v6}, Lorg/apache/commons/fileupload/FileItemStream;->isFormField()Z

    move-result v12

    .line 303
    invoke-interface {v2, v10, v11, v12, v5}, Lorg/apache/commons/fileupload/FileItemFactory;->createItem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/fileupload/FileItem;

    move-result-object v4

    .line 305
    .local v4, "fileItem":Lorg/apache/commons/fileupload/FileItem;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :try_start_3
    invoke-interface {v6}, Lorg/apache/commons/fileupload/FileItemStream;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-interface {v4}, Lorg/apache/commons/fileupload/FileItem;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    :try_end_3
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :try_start_4
    invoke-interface {v6}, Lorg/apache/commons/fileupload/FileItemStream;->getHeaders()Lorg/apache/commons/fileupload/FileItemHeaders;

    move-result-object v3

    .line 315
    .local v3, "fih":Lorg/apache/commons/fileupload/FileItemHeaders;
    invoke-interface {v4, v3}, Lorg/apache/commons/fileupload/FileItem;->setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V

    .line 299
    .end local v3    # "fih":Lorg/apache/commons/fileupload/FileItemHeaders;
    .end local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    :cond_2
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemIterator;->hasNext()Z
    :try_end_4
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 317
    const/4 v9, 0x1

    .line 324
    if-nez v9, :cond_3

    .line 325
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 318
    :cond_3
    return-object v7

    .line 308
    .restart local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    :catch_1
    move-exception v1

    .line 309
    .restart local v1    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/fileupload/FileUploadException;

    throw v10
    :try_end_5
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    .end local v1    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    .end local v2    # "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    .end local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    .end local v8    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :catch_2
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v10, Lorg/apache/commons/fileupload/FileUploadException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    .restart local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    .restart local v8    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :catch_3
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    new-instance v10, Lorg/apache/commons/fileupload/FileUploadBase$IOFileUploadException;

    const-string v11, "Processing of %s request failed. %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 312
    const-string v14, "multipart/form-data"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 311
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lorg/apache/commons/fileupload/FileUploadBase$IOFileUploadException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v10
    :try_end_7
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 325
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/fileupload/FileItem;

    .line 327
    .restart local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    :try_start_8
    invoke-interface {v4}, Lorg/apache/commons/fileupload/FileItem;->delete()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 328
    :catch_4
    move-exception v11

    goto :goto_1

    .line 325
    .end local v2    # "fac":Lorg/apache/commons/fileupload/FileItemFactory;
    .end local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    .end local v8    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/fileupload/FileItem;

    .line 327
    .restart local v4    # "fileItem":Lorg/apache/commons/fileupload/FileItem;
    :try_start_9
    invoke-interface {v4}, Lorg/apache/commons/fileupload/FileItem;->delete()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 328
    :catch_5
    move-exception v12

    goto/16 :goto_0
.end method

.method public abstract setFileItemFactory(Lorg/apache/commons/fileupload/FileItemFactory;)V
.end method

.method public setFileSizeMax(J)V
    .locals 1
    .param p1, "fileSizeMax"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lorg/apache/commons/fileupload/FileUploadBase;->fileSizeMax:J

    .line 223
    return-void
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase;->headerEncoding:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setProgressListener(Lorg/apache/commons/fileupload/ProgressListener;)V
    .locals 0
    .param p1, "pListener"    # Lorg/apache/commons/fileupload/ProgressListener;

    .prologue
    .line 1448
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    .line 1449
    return-void
.end method

.method public setSizeMax(J)V
    .locals 1
    .param p1, "sizeMax"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lorg/apache/commons/fileupload/FileUploadBase;->sizeMax:J

    .line 201
    return-void
.end method
