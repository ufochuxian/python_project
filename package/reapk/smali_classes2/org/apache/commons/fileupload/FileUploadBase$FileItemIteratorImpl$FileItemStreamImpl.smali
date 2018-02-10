.class Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileItemStreamImpl"
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final fieldName:Ljava/lang/String;

.field private final formField:Z

.field private headers:Lorg/apache/commons/fileupload/FileItemHeaders;

.field private final name:Ljava/lang/String;

.field private opened:Z

.field private final stream:Ljava/io/InputStream;

.field final synthetic this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 10
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pFieldName"    # Ljava/lang/String;
    .param p4, "pContentType"    # Ljava/lang/String;
    .param p5, "pFormField"    # Z
    .param p6, "pContentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p2, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->name:Ljava/lang/String;

    .line 725
    iput-object p3, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    .line 726
    iput-object p4, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->contentType:Ljava/lang/String;

    .line 727
    iput-boolean p5, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->formField:Z

    .line 728
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$0(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/MultipartStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    move-result-object v6

    .line 729
    .local v6, "itemStream":Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    move-object v3, v6

    .line 730
    .local v3, "istream":Ljava/io/InputStream;
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/fileupload/FileUploadBase;->access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 731
    const-wide/16 v4, -0x1

    cmp-long v2, p6, v4

    if-eqz v2, :cond_0

    .line 732
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/fileupload/FileUploadBase;->access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    cmp-long v2, p6, v4

    if-lez v2, :cond_0

    .line 734
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;

    .line 735
    const-string v2, "The field %s exceeds its maximum permitted size of %s bytes."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 736
    iget-object v7, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/fileupload/FileUploadBase;->access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    .line 735
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/fileupload/FileUploadBase;->access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    move-wide/from16 v2, p6

    .line 734
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    .line 738
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;
    invoke-virtual {v0, p2}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;->setFileName(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, p3}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;->setFieldName(Ljava/lang/String;)V

    .line 740
    new-instance v2, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;

    invoke-direct {v2, v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;-><init>(Lorg/apache/commons/fileupload/FileUploadException;)V

    throw v2

    .line 742
    .end local v0    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;
    :cond_0
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/FileUploadBase;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/fileupload/FileUploadBase;->access$0(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;Ljava/io/InputStream;JLorg/apache/commons/fileupload/MultipartStream$ItemInputStream;)V

    .line 758
    .end local v3    # "istream":Ljava/io/InputStream;
    .local v1, "istream":Ljava/io/InputStream;
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    .line 759
    return-void

    .end local v1    # "istream":Ljava/io/InputStream;
    .restart local v3    # "istream":Ljava/io/InputStream;
    :cond_1
    move-object v1, v3

    .end local v3    # "istream":Ljava/io/InputStream;
    .restart local v1    # "istream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 827
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lorg/apache/commons/fileupload/FileItemHeaders;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/fileupload/util/Streams;->checkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFormField()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->formField:Z

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->opened:Z

    if-eqz v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 812
    const-string v1, "The stream was already opened."

    .line 811
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    check-cast v0, Lorg/apache/commons/fileupload/util/Closeable;

    invoke-interface {v0}, Lorg/apache/commons/fileupload/util/Closeable;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    new-instance v0, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v0

    .line 817
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V
    .locals 0
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 844
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 845
    return-void
.end method
