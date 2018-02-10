.class public Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/fileupload/util/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInputStream"
.end annotation


# static fields
.field private static final BYTE_POSITIVE_OFFSET:I = 0x100


# instance fields
.field private closed:Z

.field private pad:I

.field private pos:I

.field final synthetic this$0:Lorg/apache/commons/fileupload/MultipartStream;

.field private total:J


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/MultipartStream;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 813
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->findSeparator()V

    .line 814
    return-void
.end method

.method private findSeparator()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream;->findSeparator()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    .line 821
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$2(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 823
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$2(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    goto :goto_0
.end method

.method private makeAvailable()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 986
    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    if-eq v3, v8, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v0

    .line 991
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v3

    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v6}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v6

    sub-int/2addr v3, v6

    iget v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    .line 992
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v5}, Lorg/apache/commons/fileupload/MultipartStream;->access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3, v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V

    .line 996
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    invoke-static {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$6(Lorg/apache/commons/fileupload/MultipartStream;I)V

    .line 999
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$5(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v5}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v6}, Lorg/apache/commons/fileupload/MultipartStream;->access$7(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v7}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1000
    .local v1, "bytesRead":I
    if-ne v1, v8, :cond_3

    .line 1004
    const-string v2, "Stream ended unexpectedly"

    .line 1005
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1007
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$8(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1008
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$8(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteBytesRead(I)V

    .line 1010
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$6(Lorg/apache/commons/fileupload/MultipartStream;I)V

    .line 1012
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->findSeparator()V

    .line 1013
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 1015
    .local v0, "av":I
    if-gtz v0, :cond_0

    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    if-eq v3, v8, :cond_2

    goto/16 :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 850
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$0(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v0, v1

    .line 852
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->close(Z)V

    .line 923
    return-void
.end method

.method public close(Z)V
    .locals 5
    .param p1, "pCloseUnderlying"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 933
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 952
    :goto_0
    return-void

    .line 936
    :cond_0
    if-eqz p1, :cond_2

    .line 937
    iput-boolean v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    .line 938
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$5(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 951
    :goto_1
    iput-boolean v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    goto :goto_0

    .line 948
    .local v0, "av":I
    :cond_1
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->skip(J)J

    .line 941
    .end local v0    # "av":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 942
    .restart local v0    # "av":I
    if-nez v0, :cond_1

    .line 943
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 944
    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 837
    iget-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 870
    new-instance v1, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v1

    .line 872
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v1

    if-nez v1, :cond_2

    .line 873
    const/4 v0, -0x1

    .line 880
    :cond_1
    :goto_0
    return v0

    .line 875
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    .line 876
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V

    aget-byte v0, v1, v3

    .line 877
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 880
    add-int/lit16 v0, v0, 0x100

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 896
    new-instance v1, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v1

    .line 898
    :cond_0
    if-nez p3, :cond_1

    .line 899
    const/4 v0, 0x0

    .line 912
    :goto_0
    return v0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 902
    .local v0, "res":I
    if-nez v0, :cond_2

    .line 903
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 904
    if-nez v0, :cond_2

    .line 905
    const/4 v0, -0x1

    goto :goto_0

    .line 908
    :cond_2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 909
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v2

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V

    .line 911
    iget-wide v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 965
    new-instance v1, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v1

    .line 967
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 968
    .local v0, "av":I
    if-nez v0, :cond_1

    .line 969
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 970
    if-nez v0, :cond_1

    .line 971
    const-wide/16 v2, 0x0

    .line 976
    :goto_0
    return-wide v2

    .line 974
    :cond_1
    int-to-long v4, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 975
    .local v2, "res":J
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$1(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    invoke-static {v1, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V

    goto :goto_0
.end method
