.class public Lcom/chivox/AIEngineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BUFFER_SIZE:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "AIEngineHelper"

    sput-object v0, Lcom/chivox/AIEngineHelper;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x1000

    sput v0, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes2hex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 261
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 262
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 263
    .local v2, "v":I
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 264
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "v":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 237
    sget v3, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    new-array v0, v3, [B

    .line 239
    .local v0, "buf":[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    .local v2, "fos":Ljava/io/FileOutputStream;
    :goto_0
    sget v3, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytes":I
    if-lez v1, :cond_0

    .line 241
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 245
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 246
    return-void
.end method

.method public static extractResourceOnce(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unzip"    # Z

    .prologue
    .line 84
    if-eqz p2, :cond_2

    .line 85
    :try_start_0
    const-string v7, "\\.[^.]*$"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "pureName":Ljava/lang/String;
    invoke-static {p0}, Lcom/chivox/AIEngineHelper;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "filesDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v5, "targetDir":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/chivox/AIEngineHelper;->md5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "md5sum":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v7, ".md5sum"

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v3, "md5sumFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    invoke-static {v3}, Lcom/chivox/AIEngineHelper;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "md5sum2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 117
    .end local v0    # "filesDir":Ljava/io/File;
    .end local v1    # "md5sum":Ljava/lang/String;
    .end local v2    # "md5sum2":Ljava/lang/String;
    .end local v3    # "md5sumFile":Ljava/io/File;
    .end local v4    # "pureName":Ljava/lang/String;
    .end local v5    # "targetDir":Ljava/io/File;
    :goto_0
    return-object v7

    .line 101
    .restart local v0    # "filesDir":Ljava/io/File;
    .restart local v1    # "md5sum":Ljava/lang/String;
    .restart local v3    # "md5sumFile":Ljava/io/File;
    .restart local v4    # "pureName":Ljava/lang/String;
    .restart local v5    # "targetDir":Ljava/io/File;
    :cond_0
    invoke-static {v5}, Lcom/chivox/AIEngineHelper;->removeDirectory(Ljava/io/File;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/chivox/AIEngineHelper;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 105
    invoke-static {v3, v1}, Lcom/chivox/AIEngineHelper;->writeFileAsString(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 109
    .end local v0    # "filesDir":Ljava/io/File;
    .end local v1    # "md5sum":Ljava/lang/String;
    .end local v3    # "md5sumFile":Ljava/io/File;
    .end local v4    # "pureName":Ljava/lang/String;
    .end local v5    # "targetDir":Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-static {p0}, Lcom/chivox/AIEngineHelper;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v6, "targetFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/chivox/AIEngineHelper;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 111
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 113
    .end local v6    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 117
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "targetDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Ljava/io/File;

    .end local v0    # "targetDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .restart local v0    # "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 196
    :cond_2
    return-object v0
.end method

.method private static md5sum(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 273
    sget v3, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    new-array v0, v3, [B

    .line 275
    .local v0, "buf":[B
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 276
    .local v2, "md":Ljava/security/MessageDigest;
    :goto_0
    const/4 v3, 0x0

    sget v4, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytes":I
    if-lez v1, :cond_0

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 281
    .end local v1    # "bytes":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 284
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 279
    .restart local v1    # "bytes":I
    .restart local v2    # "md":Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 280
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/chivox/AIEngineHelper;->bytes2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method private static readFileAsString(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static registerDeviceOnce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static/range {p0 .. p0}, Lcom/chivox/AIEngineHelper;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 132
    .local v3, "filesDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v13, "aiengine.serial"

    invoke-direct {v10, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v10, "serialNumberFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 136
    :try_start_0
    invoke-static {v10}, Lcom/chivox/AIEngineHelper;->readFileAsString(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 177
    :goto_0
    return-object v9

    .line 138
    :catch_0
    move-exception v13

    .line 143
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "timestamp":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/chivox/AIEngineHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "sig":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "appKey"

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "timestamp"

    invoke-direct {v13, v14, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "deviceId"

    move-object/from16 v0, p3

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sig"

    invoke-direct {v13, v14, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "userId"

    move-object/from16 v0, p4

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :try_start_1
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 155
    .local v5, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v13, 0xbb8

    invoke-static {v5, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 156
    const/16 v13, 0x1388

    invoke-static {v5, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 159
    .local v4, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    const-string v13, "http://auth.api.chivox.com/device"

    invoke-direct {v6, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 160
    .local v6, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v14, "UTF-8"

    invoke-direct {v13, v7, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 161
    invoke-interface {v4, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 162
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "content":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "serialNumber"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    .local v9, "serialNumber":Ljava/lang/String;
    :try_start_2
    invoke-static {v10, v9}, Lcom/chivox/AIEngineHelper;->writeFileAsString(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 167
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 172
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "serialNumber":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 177
    const-string v9, ""

    goto/16 :goto_0
.end method

.method private static removeDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 65
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/chivox/AIEngineHelper;->removeDirectory(Ljava/io/File;)V

    .line 68
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 72
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 250
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 251
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 252
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/chivox/AIEngineHelper;->bytes2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 256
    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v1

    .line 256
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 202
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    sget v8, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    invoke-direct {v7, p0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v6, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_3

    .line 207
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 211
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 213
    .local v3, "parentdir":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_1
    sget v7, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    new-array v1, v7, [B

    .line 219
    .local v1, "buf":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 220
    .local v0, "bos":Ljava/io/OutputStream;
    :goto_1
    sget v7, Lcom/chivox/AIEngineHelper;->BUFFER_SIZE:I

    invoke-virtual {v6, v1, v9, v7}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    .local v4, "pos":I
    if-lez v4, :cond_2

    .line 221
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 224
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 230
    .end local v0    # "bos":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "parentdir":Ljava/io/File;
    .end local v4    # "pos":I
    :cond_3
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 231
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 232
    return-void
.end method

.method private static writeFileAsString(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 57
    .local v0, "fw":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 59
    return-void
.end method
