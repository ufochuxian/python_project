.class public Lcom/qiniu/utils/InputStreamAt$ByteInput;
.super Lcom/qiniu/utils/InputStreamAt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/InputStreamAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteInput"
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$ByteInput;->data:[B

    .line 149
    return-void
.end method


# virtual methods
.method public crc32()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$ByteInput;->data:[B

    invoke-static {v0}, Lcom/qiniu/utils/Crc32;->calc([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public doClose()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public length()J
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$ByteInput;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected read(JI)[B
    .locals 7
    .param p1, "off"    # J
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 164
    long-to-int v1, p1

    .line 165
    .local v1, "offset":I
    if-nez v1, :cond_0

    int-to-long v2, p3

    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$ByteInput;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$ByteInput;->data:[B

    .line 174
    :goto_0
    return-object v0

    .line 168
    :cond_0
    if-gtz p3, :cond_1

    .line 169
    new-array v0, v6, [B

    goto :goto_0

    .line 171
    :cond_1
    new-array v0, p3, [B

    .line 172
    .local v0, "bs":[B
    iget-object v2, p0, Lcom/qiniu/utils/InputStreamAt$ByteInput;->data:[B

    invoke-static {v2, v1, v0, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/2addr v1, p3

    .line 174
    goto :goto_0
.end method
