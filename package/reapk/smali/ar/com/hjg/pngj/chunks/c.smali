.class public Lar/com/hjg/pngj/chunks/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/c$1;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "IHDR"

.field public static final b:Ljava/lang/String; = "PLTE"

.field public static final c:Ljava/lang/String; = "IDAT"

.field public static final d:Ljava/lang/String; = "IEND"

.field public static final e:Ljava/lang/String; = "cHRM"

.field public static final f:Ljava/lang/String; = "gAMA"

.field public static final g:Ljava/lang/String; = "iCCP"

.field public static final h:Ljava/lang/String; = "sBIT"

.field public static final i:Ljava/lang/String; = "sRGB"

.field public static final j:Ljava/lang/String; = "bKGD"

.field public static final k:Ljava/lang/String; = "hIST"

.field public static final l:Ljava/lang/String; = "tRNS"

.field public static final m:Ljava/lang/String; = "pHYs"

.field public static final n:Ljava/lang/String; = "sPLT"

.field public static final o:Ljava/lang/String; = "tIME"

.field public static final p:Ljava/lang/String; = "iTXt"

.field public static final q:Ljava/lang/String; = "tEXt"

.field public static final r:Ljava/lang/String; = "zTXt"

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field private static w:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "IHDR"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/c;->s:[B

    .line 49
    const-string v0, "PLTE"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/c;->t:[B

    .line 50
    const-string v0, "IDAT"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/c;->u:[B

    .line 51
    const-string v0, "IEND"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/c;->v:[B

    .line 56
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lar/com/hjg/pngj/chunks/c;->w:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "x"    # [B

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lar/com/hjg/pngj/x;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 3
    .param p0, "x"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lar/com/hjg/pngj/x;->c:Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/util/List;Lar/com/hjg/pngj/chunks/d;)Ljava/util/List;
    .locals 4
    .param p1, "predicateKeep"    # Lar/com/hjg/pngj/chunks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;",
            "Lar/com/hjg/pngj/chunks/d;",
            ")",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 226
    .local v0, "element":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/chunks/d;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v0    # "element":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    return-object v2
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v2, Lar/com/hjg/pngj/chunks/c;->w:[B

    monitor-enter v2

    .line 212
    :goto_0
    :try_start_0
    sget-object v1, Lar/com/hjg/pngj/chunks/c;->w:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 213
    sget-object v1, Lar/com/hjg/pngj/chunks/c;->w:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 215
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "len":I
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p0, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 150
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/ag;

    return v0
.end method

.method public static final a(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 4
    .param p0, "c1"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .param p1, "c2"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    if-ne p0, p1, :cond_1

    .line 281
    .end local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    .end local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_0
    :goto_0
    return v0

    .line 265
    .restart local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    .restart local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 266
    goto :goto_0

    .line 267
    :cond_3
    iget-boolean v2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->b:Z

    if-eqz v2, :cond_4

    move v0, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 271
    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/PngChunk;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/af;

    if-eqz v0, :cond_6

    .line 275
    check-cast p0, Lar/com/hjg/pngj/chunks/af;

    .end local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/af;->m()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lar/com/hjg/pngj/chunks/af;

    .end local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/af;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 277
    .restart local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    .restart local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_6
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/y;

    if-eqz v0, :cond_7

    .line 278
    check-cast p0, Lar/com/hjg/pngj/chunks/y;

    .end local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/y;->k()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lar/com/hjg/pngj/chunks/y;

    .end local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/y;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p0    # "c1":Lar/com/hjg/pngj/chunks/PngChunk;
    .restart local p1    # "c2":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_7
    move v0, v1

    .line 281
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)Z
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "behav"    # Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    :goto_0
    :pswitch_0
    return v0

    .line 176
    :cond_0
    sget-object v2, Lar/com/hjg/pngj/chunks/c$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 184
    goto :goto_0

    .line 180
    :pswitch_1
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/c;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 182
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2
    .param p0, "x"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    sget-object v1, Lar/com/hjg/pngj/x;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BIIZ)[B
    .locals 6
    .param p0, "ori"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "compress"    # Z

    .prologue
    .line 193
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 194
    .local v2, "inb":Ljava/io/ByteArrayInputStream;
    if-eqz p3, :cond_0

    move-object v1, v2

    .line 195
    .local v1, "in":Ljava/io/InputStream;
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v4, "outb":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_1

    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    .local v3, "out":Ljava/io/OutputStream;
    :goto_1
    invoke-static {v1, v3}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 200
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 194
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "outb":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v2    # "inb":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v5, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "inb":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "outb":Ljava/io/ByteArrayOutputStream;
    :cond_1
    move-object v3, v4

    .line 196
    goto :goto_1
.end method

.method public static final a([BZ)[B
    .locals 2
    .param p0, "ori"    # [B
    .param p1, "compress"    # Z

    .prologue
    .line 188
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lar/com/hjg/pngj/chunks/c;->a([BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;Lar/com/hjg/pngj/chunks/d;)I
    .locals 4
    .param p1, "predicateRemove"    # Lar/com/hjg/pngj/chunks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;",
            "Lar/com/hjg/pngj/chunks/d;",
            ")I"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "cont":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 243
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/chunks/d;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_1
    return v1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3
    .param p0, "x"    # [B

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lar/com/hjg/pngj/x;->e:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 3
    .param p0, "x"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lar/com/hjg/pngj/x;->e:Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p0, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 285
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/af;

    return v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 2
    .param p0, "x"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lar/com/hjg/pngj/x;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 161
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 163
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 160
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
