.class public Lcom/jiliguala/niuwa/common/util/xutils/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x64

.field private static b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "stats":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 146
    .end local v1    # "stats":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    const-wide/16 v4, 0x0

    .line 226
    :cond_0
    :goto_0
    return-wide v4

    .line 215
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 216
    .local v2, "len":I
    const/16 v6, 0x64

    if-ge v2, v6, :cond_2

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    int-to-long v4, v6

    goto :goto_0

    .line 219
    :cond_2
    const-wide/16 v4, 0x0

    .line 220
    .local v4, "size":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 221
    add-int/lit8 v0, v1, 0x64

    .line 222
    .local v0, "end":I
    if-ge v0, v2, :cond_3

    .line 223
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 220
    add-int/lit8 v1, v1, 0x64

    goto :goto_1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_3
    move v0, v2

    .line 222
    goto :goto_2
.end method

.method public static a()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v9, 0x0

    .line 64
    .local v9, "webUserAgent":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 66
    :try_start_0
    const-string v11, "com.android.internal.R$string"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 67
    .local v7, "sysResCls":Ljava/lang/Class;
    const-string v11, "web_user_agent"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 68
    .local v10, "webUserAgentField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 69
    .local v6, "resId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 73
    .end local v6    # "resId":Ljava/lang/Integer;
    .end local v7    # "sysResCls":Ljava/lang/Class;
    .end local v10    # "webUserAgentField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 74
    const-string v9, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1"

    .line 77
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 78
    .local v4, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 81
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 82
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :goto_1
    const-string v11, "; "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 93
    const-string v11, "-"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .end local v1    # "country":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v11, "REL"

    sget-object v12, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 102
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 103
    .local v5, "model":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 104
    const-string v11, "; "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .end local v5    # "model":Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 109
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 110
    const-string v11, " Build/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_4
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    const-string v13, "Mobile "

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 85
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_5
    const-string v11, "1.0"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 98
    .restart local v3    # "language":Ljava/lang/String;
    :cond_6
    const-string v11, "en"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 70
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v8    # "version":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "cachePath":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 126
    .local v2, "externalCacheDir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 130
    .end local v2    # "externalCacheDir":Ljava/io/File;
    :cond_0
    if-nez v1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 132
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 137
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 231
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;
    .locals 10
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    const/4 v5, 0x0

    .line 186
    if-nez p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v5

    .line 188
    :cond_1
    const/4 v0, 0x0

    .line 189
    .local v0, "charsetName":Ljava/lang/String;
    const-string v6, "Content-Type"

    invoke-virtual {p0, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 190
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_2

    .line 191
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v2, v7, v6

    .line 192
    .local v2, "element":Lorg/apache/http/HeaderElement;
    const-string v9, "charset"

    invoke-interface {v2, v9}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 193
    .local v1, "charsetPair":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_4

    .line 194
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    .end local v1    # "charsetPair":Lorg/apache/http/NameValuePair;
    .end local v2    # "element":Lorg/apache/http/HeaderElement;
    :cond_2
    const/4 v4, 0x0

    .line 201
    .local v4, "isSupportedCharset":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 203
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 208
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_0

    .line 191
    .end local v4    # "isSupportedCharset":Z
    .restart local v1    # "charsetPair":Lorg/apache/http/NameValuePair;
    .restart local v2    # "element":Lorg/apache/http/HeaderElement;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "charsetPair":Lorg/apache/http/NameValuePair;
    .end local v2    # "element":Lorg/apache/http/HeaderElement;
    .restart local v4    # "isSupportedCharset":Z
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v2, 0x0

    .line 152
    if-nez p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    const-string v3, "Accept-Ranges"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 155
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_2

    .line 156
    const-string v2, "bytes"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 158
    :cond_2
    const-string v3, "Content-Range"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "bytes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 167
    if-nez p0, :cond_1

    .line 168
    const/4 v3, 0x0

    .line 182
    :cond_0
    :goto_0
    return-object v3

    .line 169
    :cond_1
    const/4 v3, 0x0

    .line 170
    .local v3, "result":Ljava/lang/String;
    const-string v4, "Content-Disposition"

    invoke-interface {p0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 171
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 172
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 173
    .local v0, "element":Lorg/apache/http/HeaderElement;
    const-string v7, "filename"

    invoke-interface {v0, v7}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 174
    .local v1, "fileNamePair":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v4, "UTF-8"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/util/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 178
    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 244
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_0

    .line 245
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/jiliguala/niuwa/common/util/xutils/util/j$1;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/common/util/xutils/util/j$1;-><init>()V

    aput-object v4, v2, v3

    .line 260
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 261
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 262
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :goto_0
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_1

    .line 269
    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 270
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 272
    :cond_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
