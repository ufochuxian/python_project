.class public Lcom/jiliguala/niuwa/logic/k/a;
.super Lcom/jiliguala/niuwa/logic/k/d;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lcom/jiliguala/niuwa/logic/k/a;


# instance fields
.field private g:Lcom/jiliguala/niuwa/logic/k/a/a;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/logic/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a;->e:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a;->f:Lcom/jiliguala/niuwa/logic/k/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/d;-><init>()V

    .line 42
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/a/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/a/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->g:Lcom/jiliguala/niuwa/logic/k/a/a;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->h:[B

    .line 47
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/k/a;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/jiliguala/niuwa/logic/k/a;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/a;->f:Lcom/jiliguala/niuwa/logic/k/a;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a;->f:Lcom/jiliguala/niuwa/logic/k/a;

    .line 54
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/a;->f:Lcom/jiliguala/niuwa/logic/k/a;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/k/a;)[B
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->h:[B

    return-object v0
.end method

.method private b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/a;
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 167
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 168
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->b(Ljava/lang/String;)V

    .line 169
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .end local p1    # "item":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 170
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Ljava/lang/String;)V

    .line 171
    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/k/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/a;->h()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/a;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 139
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 140
    const-string v3, "babyId = ? AND resId = ?"

    .line 141
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 142
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 144
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 151
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    :cond_0
    :goto_0
    return-object v8

    .line 159
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v9

    .line 163
    goto :goto_0

    .line 155
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v9

    .line 157
    goto :goto_0

    .line 159
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_4
    throw v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 11
    .param p1, "audioRecord"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v5, "jo":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 300
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 302
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 304
    .local v4, "ja":Lorg/json/JSONArray;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "json":Ljava/lang/String;
    const-class v9, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    invoke-static {v6, v9}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;

    .line 306
    .local v8, "template":Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;
    if-eqz v8, :cond_0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/a;>;"
    iget-object v9, v8, Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 309
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    new-instance v2, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 310
    .local v2, "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 311
    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/jiliguala/niuwa/logic/db/a/a;->b(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/a;>;"
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v5    # "jo":Lorg/json/JSONObject;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "template":Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;
    :catch_0
    move-exception v9

    .line 321
    :cond_1
    return-void

    .line 314
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/a;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "ja":Lorg/json/JSONArray;
    .restart local v5    # "jo":Lorg/json/JSONObject;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "template":Lcom/jiliguala/niuwa/logic/network/json/AudioDataSetsTemplate;
    :cond_2
    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/k/a;->g:Lcom/jiliguala/niuwa/logic/k/a/a;

    invoke-virtual {v9, v1}, Lcom/jiliguala/niuwa/logic/k/a/a;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/a$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/logic/k/a$5;-><init>(Lcom/jiliguala/niuwa/logic/k/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    .line 267
    const/4 v4, 0x0

    .line 268
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 270
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 271
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v3, v6, [B

    .line 273
    .local v3, "buffer":[B
    const/4 v5, -0x1

    .line 274
    .local v5, "length":I
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 275
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 285
    .end local v3    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 290
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 293
    :goto_2
    return-void

    .line 277
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v5    # "length":I
    :cond_0
    if-eqz v2, :cond_1

    .line 278
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "audioRecord":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    .end local v0    # "audioRecord":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 292
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 287
    .end local v3    # "buffer":[B
    .end local v5    # "length":I
    :catch_1
    move-exception v6

    .line 290
    :goto_3
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 292
    throw v6

    .line 290
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 287
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 285
    :catch_3
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/jiliguala/niuwa/logic/db/a/a;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/a;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/a$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/a$1;-><init>(Lcom/jiliguala/niuwa/logic/k/a;Lcom/jiliguala/niuwa/logic/db/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V
    .locals 1
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 175
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a;->b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/a;

    move-result-object v0

    .line 179
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/db/a/a;)V

    .line 180
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/a$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/a$2;-><init>(Lcom/jiliguala/niuwa/logic/k/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p2, "bid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/a$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/a$4;-><init>(Lcom/jiliguala/niuwa/logic/k/a;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/k/d;->b()V

    .line 60
    return-void
.end method

.method b(Lcom/jiliguala/niuwa/logic/db/a/a;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/a;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/a$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/a$3;-><init>(Lcom/jiliguala/niuwa/logic/k/a;Lcom/jiliguala/niuwa/logic/db/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/a;

    move-result-object v0

    .line 248
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method c()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 63
    iget-object v11, p0, Lcom/jiliguala/niuwa/logic/k/a;->h:[B

    monitor-enter v11

    .line 64
    :try_start_0
    const-string v3, "babyId = ? "

    .line 65
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 66
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .local v9, "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :try_start_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/a;-><init>()V

    .line 74
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/a;->a(Landroid/database/Cursor;)V

    .line 75
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 79
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v11

    move-object v9, v10

    .line 81
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :goto_1
    return-object v9

    .line 83
    .restart local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v11

    goto :goto_1

    .line 87
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 83
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a;->a(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 230
    const-string v1, "MIGRATION"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 231
    .local v0, "hasMigrate":Z
    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/a;->g()V

    .line 234
    :cond_0
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/k/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a;->g:Lcom/jiliguala/niuwa/logic/k/a/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/k/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
