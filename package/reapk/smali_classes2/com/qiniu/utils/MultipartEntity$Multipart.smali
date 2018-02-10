.class Lcom/qiniu/utils/MultipartEntity$Multipart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Multipart"
.end annotation


# static fields
.field private static final CONTENT_DISP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final MULTIPART_CHARS:[C

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/utils/MultipartEntity$FormPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->MULTIPART_CHARS:[C

    .line 88
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 89
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 90
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    .line 91
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "Content-Disposition: form-data"

    invoke-static {v0, v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->CONTENT_DISP:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->parts:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->boundary:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private doWriteTo(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v2, Lcom/qiniu/utils/MultipartEntity$Multipart;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iget-object v3, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->boundary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 152
    .local v0, "boundaryByte":Lorg/apache/http/util/ByteArrayBuffer;
    iget-object v2, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/utils/MultipartEntity$FormPart;

    .line 153
    .local v1, "f":Lcom/qiniu/utils/MultipartEntity$FormPart;
    invoke-direct {p0, p1, v0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeStart(Ljava/io/OutputStream;Lorg/apache/http/util/ByteArrayBuffer;)V

    .line 154
    invoke-interface {v1}, Lcom/qiniu/utils/MultipartEntity$FormPart;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 155
    invoke-interface {v1}, Lcom/qiniu/utils/MultipartEntity$FormPart;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v1}, Lcom/qiniu/utils/MultipartEntity$FormPart;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->generateFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 157
    sget-object v3, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 158
    invoke-interface {v1}, Lcom/qiniu/utils/MultipartEntity$FormPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->generateContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 160
    :cond_0
    sget-object v3, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 161
    sget-object v3, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 162
    if-eqz p2, :cond_1

    .line 163
    invoke-interface {v1, p1}, Lcom/qiniu/utils/MultipartEntity$FormPart;->writeTo(Ljava/io/OutputStream;)V

    .line 165
    :cond_1
    sget-object v3, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 167
    .end local v1    # "f":Lcom/qiniu/utils/MultipartEntity$FormPart;
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeAllEnd(Ljava/io/OutputStream;Lorg/apache/http/util/ByteArrayBuffer;)V

    .line 168
    return-void
.end method

.method private static encode(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 109
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {v0, p0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .local v1, "encoded":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 103
    .local v0, "bab":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 104
    return-object v0
.end method

.method private generateContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method private generateFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method private writeAllEnd(Ljava/io/OutputStream;Lorg/apache/http/util/ByteArrayBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "boundaryByte"    # Lorg/apache/http/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 181
    invoke-static {p2, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 182
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 183
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 184
    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    return-void
.end method

.method private writeStart(Ljava/io/OutputStream;Lorg/apache/http/util/ByteArrayBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "boundaryByte"    # Lorg/apache/http/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 173
    invoke-static {p2, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 174
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 175
    sget-object v0, Lcom/qiniu/utils/MultipartEntity$Multipart;->CONTENT_DISP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 176
    return-void
.end method


# virtual methods
.method public add(Lcom/qiniu/utils/MultipartEntity$FormPart;)V
    .locals 1
    .param p1, "part"    # Lcom/qiniu/utils/MultipartEntity$FormPart;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 204
    .local v3, "rand":Ljava/util/Random;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1e

    .line 205
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 206
    sget-object v4, Lcom/qiniu/utils/MultipartEntity$Multipart;->MULTIPART_CHARS:[C

    sget-object v5, Lcom/qiniu/utils/MultipartEntity$Multipart;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected generateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 14

    .prologue
    const-wide/16 v8, -0x1

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "contentLen":J
    iget-object v10, p0, Lcom/qiniu/utils/MultipartEntity$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qiniu/utils/MultipartEntity$FormPart;

    .line 127
    .local v7, "part":Lcom/qiniu/utils/MultipartEntity$FormPart;
    invoke-interface {v7}, Lcom/qiniu/utils/MultipartEntity$FormPart;->getContentLength()J

    move-result-wide v4

    .line 128
    .local v4, "len":J
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-ltz v11, :cond_1

    .line 129
    add-long/2addr v0, v4

    goto :goto_0

    .line 134
    .end local v4    # "len":J
    .end local v7    # "part":Lcom/qiniu/utils/MultipartEntity$FormPart;
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    :try_start_0
    invoke-direct {p0, v6, v10}, Lcom/qiniu/utils/MultipartEntity$Multipart;->doWriteTo(Ljava/io/OutputStream;Z)V

    .line 137
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 138
    .local v3, "extra":[B
    array-length v8, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v8, v8

    add-long/2addr v8, v0

    .line 141
    .end local v3    # "extra":[B
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-wide v8

    .line 139
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->doWriteTo(Ljava/io/OutputStream;Z)V

    .line 147
    return-void
.end method
