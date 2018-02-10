.class public Lcom/jiliguala/niuwa/logic/k/e;
.super Lcom/jiliguala/niuwa/logic/k/d;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lcom/jiliguala/niuwa/logic/k/e;


# instance fields
.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/e;->e:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/e;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/e;->f:Lcom/jiliguala/niuwa/logic/k/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/d;-><init>()V

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->g:[B

    .line 32
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/k/e;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/jiliguala/niuwa/logic/k/e;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/e;->f:Lcom/jiliguala/niuwa/logic/k/e;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/e;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/e;->f:Lcom/jiliguala/niuwa/logic/k/e;

    .line 39
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/e;->f:Lcom/jiliguala/niuwa/logic/k/e;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/k/e;)[B
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/k/e;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->g:[B

    return-object v0
.end method

.method private b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 104
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 105
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Ljava/lang/String;)V

    .line 106
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/g;->b(Ljava/lang/String;)V

    .line 107
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .end local p1    # "item":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 108
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/g;->d()Landroid/content/ContentValues;

    move-result-object v1

    return-object v1
.end method

.method private c(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/g;
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 185
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 186
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/g;->b(Ljava/lang/String;)V

    .line 187
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .end local p1    # "item":Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 188
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/g;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 157
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 158
    const-string v3, "babyId = ? AND resId = ?"

    .line 159
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

    .line 160
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 162
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 169
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/g;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/g;
    :cond_0
    :goto_0
    return-object v8

    .line 177
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v9

    .line 181
    goto :goto_0

    .line 173
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v9

    .line 175
    goto :goto_0

    .line 177
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method a(Lcom/jiliguala/niuwa/logic/db/a/g;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/g;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/e$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/e$2;-><init>(Lcom/jiliguala/niuwa/logic/k/e;Lcom/jiliguala/niuwa/logic/db/a/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V
    .locals 1
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 193
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/e;->c(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)Lcom/jiliguala/niuwa/logic/db/a/g;

    move-result-object v0

    .line 197
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/g;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/db/a/g;)V

    .line 198
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/e$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/e$3;-><init>(Lcom/jiliguala/niuwa/logic/k/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
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
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/e$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/e$1;-><init>(Lcom/jiliguala/niuwa/logic/k/e;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method b(Lcom/jiliguala/niuwa/logic/db/a/g;)V
    .locals 2
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/g;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/e$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/e$4;-><init>(Lcom/jiliguala/niuwa/logic/k/e;Lcom/jiliguala/niuwa/logic/db/a/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/k/e;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/g;

    move-result-object v0

    .line 202
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/g;
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
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 76
    iget-object v11, p0, Lcom/jiliguala/niuwa/logic/k/e;->g:[B

    monitor-enter v11

    .line 77
    :try_start_0
    const-string v3, "babyId = ? "

    .line 78
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 79
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .local v9, "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :try_start_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/g;-><init>()V

    .line 87
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/g;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/g;->a(Landroid/database/Cursor;)V

    .line 88
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/g;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 92
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/g;
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v11

    move-object v9, v10

    .line 94
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :goto_1
    return-object v9

    .line 96
    .restart local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v11

    goto :goto_1

    .line 100
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 96
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "mAudioFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/e;->a(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public d()Ljava/util/ArrayList;
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
    .line 210
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/k/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
