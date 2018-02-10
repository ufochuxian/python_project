.class public Lorg/jsoup/helper/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "UTF-8"

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:I = 0x20000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "(?i)\\bcharset=\\s*(?:\"|\')?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    if-nez p0, :cond_1

    move-object v0, v3

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    sget-object v4, Lorg/jsoup/helper/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 170
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "charset":Ljava/lang/String;
    const-string v4, "charset="

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_0

    .line 175
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "charset":Ljava/lang/String;
    :cond_3
    move-object v0, v3

    .line 183
    goto :goto_0

    .line 178
    .restart local v0    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/nio/charset/IllegalCharsetNameException;
    move-object v0, v3

    .line 180
    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x20000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 134
    if-ltz p1, :cond_0

    move v6, v7

    :goto_0
    const-string v9, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v6, v9}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 135
    if-lez p1, :cond_1

    move v2, v7

    .line 136
    .local v2, "capped":Z
    :goto_1
    new-array v0, v10, [B

    .line 137
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 139
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    move v5, p1

    .line 142
    .local v5, "remaining":I
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 143
    .local v4, "read":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 153
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 154
    .local v1, "byteData":Ljava/nio/ByteBuffer;
    return-object v1

    .end local v0    # "buffer":[B
    .end local v1    # "byteData":Ljava/nio/ByteBuffer;
    .end local v2    # "capped":Z
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    .end local v5    # "remaining":I
    :cond_0
    move v6, v8

    .line 134
    goto :goto_0

    :cond_1
    move v2, v8

    .line 135
    goto :goto_1

    .line 144
    .restart local v0    # "buffer":[B
    .restart local v2    # "capped":Z
    .restart local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    .restart local v5    # "remaining":I
    :cond_2
    if-eqz v2, :cond_4

    .line 145
    if-le v4, v5, :cond_3

    .line 146
    invoke-virtual {v3, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 149
    :cond_3
    sub-int/2addr v5, v4

    .line 151
    :cond_4
    invoke-virtual {v3, v0, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 4
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .local v2, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/jsoup/b/f;->d()Lorg/jsoup/b/f;

    move-result-object v3

    invoke-static {v0, p1, p2, v3}, Lorg/jsoup/helper/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 41
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v3

    .line 41
    .end local v0    # "byteData":Ljava/nio/ByteBuffer;
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3

    .line 41
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/jsoup/b/f;->d()Lorg/jsoup/b/f;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/jsoup/helper/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/b/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/helper/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method static a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;
    .locals 8
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/b/f;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    if-nez p1, :cond_5

    .line 80
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "docData":Ljava/lang/String;
    invoke-virtual {p3, v1, p2}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 82
    const-string v5, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Document;->f(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/select/c;->k()Lorg/jsoup/nodes/f;

    move-result-object v4

    .line 83
    .local v4, "meta":Lorg/jsoup/nodes/f;
    if-eqz v4, :cond_1

    .line 86
    const-string v5, "http-equiv"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    const-string v5, "content"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/helper/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "foundCharset":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    :try_start_0
    const-string v5, "charset"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const-string v5, "charset"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[\"\']"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    move-object p1, v3

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    const/4 v0, 0x0

    .line 113
    .end local v3    # "foundCharset":Ljava/lang/String;
    .end local v4    # "meta":Lorg/jsoup/nodes/f;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 118
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_2
    invoke-virtual {p3, v1, p2}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->i()Lorg/jsoup/nodes/Document$a;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/jsoup/nodes/Document$a;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document$a;

    .line 123
    :cond_3
    return-object v0

    .line 93
    .restart local v3    # "foundCharset":Ljava/lang/String;
    .restart local v4    # "meta":Lorg/jsoup/nodes/f;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/nio/charset/IllegalCharsetNameException;
    const/4 v3, 0x0

    .line 95
    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .end local v3    # "foundCharset":Ljava/lang/String;
    :cond_4
    const-string v5, "charset"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "foundCharset":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v1    # "docData":Ljava/lang/String;
    .end local v3    # "foundCharset":Ljava/lang/String;
    .end local v4    # "meta":Lorg/jsoup/nodes/f;
    :cond_5
    const-string v5, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {p1, v5}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "docData":Ljava/lang/String;
    goto :goto_1
.end method
