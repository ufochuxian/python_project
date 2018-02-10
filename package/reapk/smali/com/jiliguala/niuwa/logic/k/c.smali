.class public Lcom/jiliguala/niuwa/logic/k/c;
.super Lcom/jiliguala/niuwa/logic/k/d;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lcom/jiliguala/niuwa/logic/k/c;


# instance fields
.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/logic/k/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/c;->e:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/c;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/c;->f:Lcom/jiliguala/niuwa/logic/k/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/d;-><init>()V

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/c;->g:[B

    .line 30
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/k/c;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/jiliguala/niuwa/logic/k/c;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/c;->f:Lcom/jiliguala/niuwa/logic/k/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/c;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/c;->f:Lcom/jiliguala/niuwa/logic/k/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/c;->f:Lcom/jiliguala/niuwa/logic/k/c;

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/k/c;)[B
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/k/c;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/c;->g:[B

    return-object v0
.end method

.method private c(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/e;
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 127
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 128
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 130
    iget v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    .line 131
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_1

    .line 132
    const/16 v1, 0x5001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->b(I)V

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v1, :cond_0

    .line 134
    const/16 v1, 0x5002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->b(I)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 166
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 167
    const-string v3, "resId = ?"

    .line 168
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 169
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 171
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 178
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :cond_0
    :goto_0
    return-object v8

    .line 186
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v9

    .line 190
    goto :goto_0

    .line 182
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v9

    .line 184
    goto :goto_0

    .line 186
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_4
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 226
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v1

    goto :goto_0
.end method

.method a(Lcom/jiliguala/niuwa/logic/db/a/e;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/e;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/c$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/c$1;-><init>(Lcom/jiliguala/niuwa/logic/k/c;Lcom/jiliguala/niuwa/logic/db/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V
    .locals 1
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 217
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->c(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 221
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/c;->a(Lcom/jiliguala/niuwa/logic/db/a/e;)V

    .line 222
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "downloadStatus"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 241
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    .line 244
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v1

    iput p2, v1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    .line 245
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/c;->c(Lcom/jiliguala/niuwa/logic/db/a/e;)V

    .line 247
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 252
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/k/d;->b()V

    .line 304
    return-void
.end method

.method b(Lcom/jiliguala/niuwa/logic/db/a/e;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/e;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/c$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/c$2;-><init>(Lcom/jiliguala/niuwa/logic/k/c;Lcom/jiliguala/niuwa/logic/db/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 230
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 231
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 232
    .local v0, "innerData":Lcom/jiliguala/niuwa/logic/db/a/e;
    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    iget v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method c()Ljava/util/ArrayList;
    .locals 11
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

    .line 42
    const-string v3, "type = ? AND download_status == ?"

    .line 43
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "20481"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "3"

    aput-object v1, v4, v0

    .line 44
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 50
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 55
    .local v9, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 56
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    .end local v9    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catch_0
    move-exception v8

    .line 64
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v7, v10

    .line 62
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v7

    .line 64
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_3
    throw v0
.end method

.method c(Lcom/jiliguala/niuwa/logic/db/a/e;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/e;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/c$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/c$3;-><init>(Lcom/jiliguala/niuwa/logic/k/c;Lcom/jiliguala/niuwa/logic/db/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v3, "type = ?"

    .line 72
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "20481"

    aput-object v1, v4, v0

    .line 73
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const-string v5, "_id ASC"

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/e;>;"
    :try_start_0
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 82
    .local v9, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 83
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v9    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catch_0
    move-exception v8

    .line 91
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v7, v2

    .line 89
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/e;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v7

    .line 91
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/e;>;"
    :cond_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_3
    throw v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 266
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    if-nez v0, :cond_0

    .line 278
    :goto_0
    :pswitch_0
    return v1

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 278
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 276
    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method e()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 98
    const-string v3, "type = ? AND download_status <> ?"

    .line 99
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "20482"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    .line 100
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 101
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 111
    .local v9, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 112
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v9    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v7, v10

    .line 118
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v7

    .line 120
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_3
    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/c;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 286
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/c;->b(Lcom/jiliguala/niuwa/logic/db/a/e;)V

    .line 287
    return-void
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
    .line 290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/k/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/k/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/k/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
