.class public Lcom/jiliguala/niuwa/logic/downloader/b/b;
.super Lcom/jiliguala/niuwa/logic/downloader/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/downloader/c/a;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    .prologue
    .line 28
    move-object v1, p1

    check-cast v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .line 29
    .local v1, "i":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "INSERT INTO task_info(base_url, real_url, file_path, onThreadProgress, file_length) values (?,?,?,?,?)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM task_info WHERE base_url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 57
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT base_url, real_url, file_path, onThreadProgress, file_length FROM task_info WHERE base_url=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .end local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    .restart local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    return-object v0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .line 47
    .local v1, "i":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a:Lcom/jiliguala/niuwa/logic/downloader/b/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE task_info SET onThreadProgress=? WHERE base_url=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 51
    return-void
.end method
