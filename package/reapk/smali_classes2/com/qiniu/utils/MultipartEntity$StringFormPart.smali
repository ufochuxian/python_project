.class Lcom/qiniu/utils/MultipartEntity$StringFormPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qiniu/utils/MultipartEntity$FormPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringFormPart"
.end annotation


# instance fields
.field private final content:[B

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/qiniu/utils/MultipartEntity;


# direct methods
.method public constructor <init>(Lcom/qiniu/utils/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qiniu/utils/MultipartEntity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->this$0:Lcom/qiniu/utils/MultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {p3}, Lcom/qiniu/utils/Util;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    .line 218
    iput-object p2, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->name:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "text/plain"

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    .local v0, "in":Ljava/io/InputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 244
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 245
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 250
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v3

    goto :goto_1
.end method
