.class public Lcom/jiliguala/niuwa/logic/downloader/b/c;
.super Lcom/jiliguala/niuwa/logic/downloader/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/downloader/c/a;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    .prologue
    .line 30
    move-object v1, p1

    check-cast v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .line 31
    .local v1, "i":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "INSERT INTO thread_info(base_url, real_url, file_path, start, end, id) VALUES (?,?,?,?,?,?)"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->realUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->dlLocalFile:Ljava/io/File;

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM thread_info WHERE id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 44
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "info":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 65
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT base_url, real_url, file_path, start, end FROM thread_info WHERE id=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, "c":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .end local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 71
    .restart local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 72
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 73
    return-object v0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    .prologue
    .line 54
    move-object v1, p1

    check-cast v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .line 55
    .local v1, "i":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE thread_info SET start=? WHERE base_url=? AND id=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM thread_info WHERE base_url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 77
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 79
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "SELECT base_url, real_url, file_path, start, end, id FROM thread_info WHERE base_url=?"

    new-array v1, v11, [Ljava/lang/String;

    aput-object p1, v1, v10

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    .local v7, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    return-object v9
.end method
