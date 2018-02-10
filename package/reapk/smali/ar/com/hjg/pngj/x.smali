.class public final Lar/com/hjg/pngj/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ar.com.pngj"

.field public static final b:Ljava/util/logging/Logger;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/nio/charset/Charset;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/nio/charset/Charset;

.field private static g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ar.com.pngj"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/x;->b:Ljava/util/logging/Logger;

    .line 25
    const-string v0, "ISO-8859-1"

    sput-object v0, Lar/com/hjg/pngj/x;->c:Ljava/lang/String;

    .line 26
    sget-object v0, Lar/com/hjg/pngj/x;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/x;->d:Ljava/nio/charset/Charset;

    .line 30
    const-string v0, "UTF-8"

    sput-object v0, Lar/com/hjg/pngj/x;->e:Ljava/lang/String;

    .line 31
    sget-object v0, Lar/com/hjg/pngj/x;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/x;->f:Ljava/nio/charset/Charset;

    .line 33
    new-instance v0, Lar/com/hjg/pngj/x$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/x$1;-><init>()V

    sput-object v0, Lar/com/hjg/pngj/x;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)D
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 51
    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(D)I
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 47
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static a(II)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "left"    # I

    .prologue
    .line 215
    sub-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(III)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "left"    # I
    .param p2, "up"    # I

    .prologue
    .line 223
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(IIII)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "left"    # I
    .param p2, "up"    # I
    .param p3, "upleft"    # I

    .prologue
    .line 228
    invoke-static {p1, p2, p3}, Lar/com/hjg/pngj/x;->b(III)I

    move-result v0

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading byte"

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([BI)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 97
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Lar/com/hjg/pngj/z;)J
    .locals 2
    .param p0, "pngr"    # Lar/com/hjg/pngj/z;

    .prologue
    .line 317
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 272
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v1, "is":Ljava/io/FileInputStream;
    return-object v1

    .line 273
    .end local v1    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static a(Ljava/io/File;Z)Ljava/io/OutputStream;
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .param p1, "overwrite"    # Z

    .prologue
    .line 284
    invoke-static {p0, p1}, Lar/com/hjg/pngj/y;->a(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(I[BI)V
    .locals 2
    .param p0, "n"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 137
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 138
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 139
    return-void
.end method

.method public static a(Ljava/io/InputStream;J)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "len"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 170
    :goto_0
    cmp-long v1, p1, v6

    if-lez v1, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 172
    .local v2, "n1":J
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 173
    sub-long/2addr p1, v2

    goto :goto_0

    .line 174
    :cond_0
    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 175
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 186
    .end local v2    # "n1":J
    :cond_1
    return-void

    .line 178
    .restart local v2    # "n1":J
    :cond_2
    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    goto :goto_0

    .line 181
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v4, "skip() returned a negative value ???"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2    # "n1":J
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;[BII)V
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 153
    if-nez p3, :cond_1

    .line 166
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "read":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 158
    add-int v3, p2, v2

    sub-int v4, p3, v2

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 159
    .local v1, "n":I
    const/4 v3, 0x1

    if-ge v1, v3, :cond_2

    .line 160
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error reading bytes, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    const-string v4, "error reading"

    invoke-direct {v3, v4, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "n":I
    :cond_2
    add-int/2addr v2, v1

    .line 162
    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;B)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "b"    # B

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I

    .prologue
    .line 126
    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    .local v0, "temp":[B
    invoke-static {p0, v0}, Lar/com/hjg/pngj/x;->b(Ljava/io/OutputStream;[B)V

    .line 128
    return-void
.end method

.method public static a(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "bs"    # [B

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/OutputStream;[BII)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "n"    # I

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-static {p0, v0, v0}, Lar/com/hjg/pngj/x;->a(Ljava/lang/Object;IZ)V

    .line 257
    return-void
.end method

.method static a(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # I

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lar/com/hjg/pngj/x;->a(Ljava/lang/Object;IZ)V

    .line 267
    return-void
.end method

.method static a(Ljava/lang/Object;IZ)V
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # I
    .param p2, "newLine"    # Z

    .prologue
    .line 295
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-object v1, v3, v4

    .line 296
    .local v1, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "steStr":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 298
    .local v0, "ind":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lar/com/hjg/pngj/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logdebug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "b"    # Z

    .prologue
    .line 309
    sget-object v0, Lar/com/hjg/pngj/x;->g:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public static a()[B
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public static b(I)I
    .locals 1
    .param p0, "r"    # I

    .prologue
    .line 211
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static b(II)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "up"    # I

    .prologue
    .line 219
    sub-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static final b(III)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 236
    add-int v4, p0, p1

    sub-int v0, v4, p2

    .line 237
    .local v0, "p":I
    if-lt v0, p0, :cond_0

    sub-int v1, v0, p0

    .line 238
    .local v1, "pa":I
    :goto_0
    if-lt v0, p1, :cond_1

    sub-int v2, v0, p1

    .line 239
    .local v2, "pb":I
    :goto_1
    if-lt v0, p2, :cond_2

    sub-int v3, v0, p2

    .line 242
    .local v3, "pc":I
    :goto_2
    if-gt v1, v2, :cond_3

    if-gt v1, v3, :cond_3

    .line 247
    .end local p0    # "a":I
    :goto_3
    return p0

    .line 237
    .end local v1    # "pa":I
    .end local v2    # "pb":I
    .end local v3    # "pc":I
    .restart local p0    # "a":I
    :cond_0
    sub-int v1, p0, v0

    goto :goto_0

    .line 238
    .restart local v1    # "pa":I
    :cond_1
    sub-int v2, p1, v0

    goto :goto_1

    .line 239
    .restart local v2    # "pb":I
    :cond_2
    sub-int v3, p2, v0

    goto :goto_2

    .line 244
    .restart local v3    # "pc":I
    :cond_3
    if-gt v2, v3, :cond_4

    move p0, p1

    .line 245
    goto :goto_3

    :cond_4
    move p0, p2

    .line 247
    goto :goto_3
.end method

.method public static b(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, -0x1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 70
    .local v0, "b1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    .local v1, "b2":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v3

    :cond_1
    shl-int/lit8 v3, v0, 0x8

    or-int/2addr v3, v1

    goto :goto_0

    .line 74
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    const-string v4, "error reading Int2"

    invoke-direct {v3, v4, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static b([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 101
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static b(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 280
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(I[BI)V
    .locals 2
    .param p0, "n"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 142
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 143
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 146
    return-void
.end method

.method public static b(Lar/com/hjg/pngj/z;)V
    .locals 0
    .param p0, "pngr"    # Lar/com/hjg/pngj/z;

    .prologue
    .line 321
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->o()V

    .line 322
    return-void
.end method

.method public static b(Ljava/io/OutputStream;I)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I

    .prologue
    .line 131
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 132
    .local v0, "temp":[B
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 133
    invoke-static {p0, v0}, Lar/com/hjg/pngj/x;->b(Ljava/io/OutputStream;[B)V

    .line 134
    return-void
.end method

.method public static b(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "b"    # [B

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lar/com/hjg/pngj/x;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/io/InputStream;)I
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, -0x1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 85
    .local v0, "b1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 86
    .local v1, "b2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 87
    .local v2, "b3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 88
    .local v3, "b4":I
    if-eq v0, v5, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v3, v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v5

    :cond_1
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v3

    or-int/2addr v5, v6

    goto :goto_0

    .line 91
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    :catch_0
    move-exception v4

    .line 92
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lar/com/hjg/pngj/PngjInputException;

    const-string v6, "error reading Int4"

    invoke-direct {v5, v6, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static final c([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 105
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static c(Lar/com/hjg/pngj/z;)J
    .locals 2
    .param p0, "r"    # Lar/com/hjg/pngj/z;

    .prologue
    .line 325
    iget-boolean v0, p0, Lar/com/hjg/pngj/z;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->m()Lar/com/hjg/pngj/d;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->s()Lar/com/hjg/pngj/h;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->o()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/s;->b()J

    move-result-wide v0

    goto :goto_0
.end method
