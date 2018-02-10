.class Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
    }
.end annotation


# instance fields
.field private final boundary:[B

.field private currentFieldName:Ljava/lang/String;

.field private currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

.field private eof:Z

.field private itemValid:Z

.field private final multi:Lorg/apache/commons/fileupload/MultipartStream;

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private skipPreamble:Z

.field final synthetic this$0:Lorg/apache/commons/fileupload/FileUploadBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/FileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
    .locals 14
    .param p2, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    if-nez p2, :cond_0

    .line 901
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 905
    .local v8, "contentType":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 906
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 907
    :cond_1
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;

    .line 908
    const-string v1, "the request doesn\'t contain a %s or %s stream, content type header is %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 909
    const-string v12, "multipart/form-data"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v12, "multipart/mixed"

    aput-object v12, v4, v5

    const/4 v5, 0x2

    aput-object v8, v4, v5

    .line 908
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 915
    .local v10, "input":Ljava/io/InputStream;
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentLength()I

    move-result v7

    .line 917
    .local v7, "contentLengthInt":I
    const-class v0, Lorg/apache/commons/fileupload/UploadContext;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p2

    .line 919
    check-cast v0, Lorg/apache/commons/fileupload/UploadContext;

    invoke-interface {v0}, Lorg/apache/commons/fileupload/UploadContext;->contentLength()J

    move-result-wide v2

    .line 923
    .local v2, "requestSize":J
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5

    .line 924
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 925
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;

    .line 926
    const-string v1, "the request was rejected because its size (%s) exceeds the configured maximum (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 927
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    .line 926
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    .line 925
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    throw v0

    .line 920
    .end local v2    # "requestSize":J
    :cond_3
    int-to-long v2, v7

    goto :goto_0

    .line 930
    .restart local v2    # "requestSize":J
    :cond_4
    new-instance v11, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$1(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v0

    invoke-direct {v11, p0, v10, v0, v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/io/InputStream;J)V

    .end local v10    # "input":Ljava/io/InputStream;
    .local v11, "input":Ljava/io/InputStream;
    move-object v10, v11

    .line 943
    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$2(Lorg/apache/commons/fileupload/FileUploadBase;)Ljava/lang/String;

    move-result-object v6

    .line 944
    .local v6, "charEncoding":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 945
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    .line 948
    :cond_6
    invoke-virtual {p1, v8}, Lorg/apache/commons/fileupload/FileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    .line 949
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    if-nez v0, :cond_7

    .line 950
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadException;

    const-string v1, "the request was rejected because no multipart boundary was found"

    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_7
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$3(Lorg/apache/commons/fileupload/FileUploadBase;)Lorg/apache/commons/fileupload/ProgressListener;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;-><init>(Lorg/apache/commons/fileupload/ProgressListener;J)V

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 955
    :try_start_0
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-direct {v0, v10, v1, v4}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0, v6}, Lorg/apache/commons/fileupload/MultipartStream;->setHeaderEncoding(Ljava/lang/String;)V

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    .line 963
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->findNextItem()Z

    .line 964
    return-void

    .line 956
    :catch_0
    move-exception v9

    .line 957
    .local v9, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;

    .line 958
    const-string v1, "The boundary specified in the %s header is too long"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v12, "Content-type"

    aput-object v12, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-direct {v0, v1, v9}, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/MultipartStream;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    return-object v0
.end method

.method private findNextItem()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-eqz v2, :cond_0

    .line 974
    const/4 v2, 0x0

    .line 1033
    :goto_0
    return v2

    .line 976
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    if-eqz v2, :cond_1

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->close()V

    .line 978
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 982
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    if-eqz v2, :cond_2

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->skipPreamble()Z

    move-result v15

    .line 987
    .local v15, "nextPart":Z
    :goto_2
    if-nez v15, :cond_4

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 990
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    .line 991
    const/4 v2, 0x0

    goto :goto_0

    .line 985
    .end local v15    # "nextPart":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z

    move-result v15

    .restart local v15    # "nextPart":Z
    goto :goto_2

    .line 994
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    invoke-virtual {v2, v3}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 995
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    goto :goto_1

    .line 998
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v3}, Lorg/apache/commons/fileupload/MultipartStream;->readHeaders()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/fileupload/FileUploadBase;->getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;

    move-result-object v14

    .line 999
    .local v14, "headers":Lorg/apache/commons/fileupload/FileItemHeaders;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v2, v14}, Lorg/apache/commons/fileupload/FileUploadBase;->getFieldName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    .local v5, "fieldName":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1003
    const-string v2, "Content-type"

    invoke-interface {v14, v2}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1004
    .local v17, "subContentType":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 1005
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    const-string v3, "multipart/mixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1007
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v16

    .line 1010
    .local v16, "subBoundary":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 1011
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    goto/16 :goto_1

    .line 1014
    .end local v16    # "subBoundary":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v2, v14}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v4

    .line 1015
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1016
    const-string v3, "Content-type"

    invoke-interface {v14, v3}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1017
    if-nez v4, :cond_6

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 1015
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v2, v14}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 1020
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1021
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1017
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 1024
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v17    # "subContentType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v2, v14}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v4

    .line 1025
    .restart local v4    # "fileName":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1026
    new-instance v6, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1027
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 1028
    const-string v2, "Content-type"

    invoke-interface {v14, v2}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1029
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v12

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v6 .. v13}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 1026
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v2, v14}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 1032
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1033
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    goto/16 :goto_1
.end method

.method private getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J
    .locals 4
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 1042
    :try_start_0
    const-string v1, "Content-length"

    invoke-interface {p1, v1}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1044
    :goto_0
    return-wide v2

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1059
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-eqz v1, :cond_0

    .line 1060
    const/4 v1, 0x0

    .line 1066
    :goto_0
    return v1

    .line 1062
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-eqz v1, :cond_1

    .line 1063
    const/4 v1, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->findNextItem()Z
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    invoke-virtual {v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/fileupload/FileUploadException;

    throw v1
.end method

.method public next()Lorg/apache/commons/fileupload/FileItemStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1085
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1088
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1089
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    return-object v0
.end method
