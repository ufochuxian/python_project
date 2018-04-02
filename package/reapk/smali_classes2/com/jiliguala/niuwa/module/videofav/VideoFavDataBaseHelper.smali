.class public Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final CREATE_VIDEO_FAV_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS videofav ( bid TEXT NOT NULL , channelID TEXT , count TEXT,TS TEXT);"

.field private static final DATA_BASE_NAME:Ljava/lang/String; = "videfav.db"

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_FAV_TABLE:Ljava/lang/String; = "videofav"

.field private static mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;


# instance fields
.field private mDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "videfav.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    const-string v0, "videfav.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->mFile:Ljava/io/File;

    .line 33
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-class v1, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    .line 39
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "channelID"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "TS"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert into videofav(bid,channelID,count,TS) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "insrtSql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM videofav"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string v0, "CREATE TABLE IF NOT EXISTS videofav ( bid TEXT NOT NULL , channelID TEXT , count TEXT,TS TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 53
    return-void
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 57
    const-string v0, "DROP TABLE IF EXISTS videofav"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    return-void
.end method

.method public selectCountByBidAndChannelIDAndTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "ts"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select count from videofav where bid = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and channelID=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND TS = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 107
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v2, 0x0

    .line 112
    .local v2, "num":I
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 115
    :cond_3
    if-lez v2, :cond_4

    .line 116
    add-int/lit8 v4, v2, 0x1

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    :cond_4
    if-eqz v0, :cond_5

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v4, v5

    .line 118
    goto :goto_0

    .line 120
    .end local v2    # "num":I
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    move v4, v5

    .line 121
    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_7

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_7
    throw v4
.end method

.method public selectVideoFavData()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 130
    const/4 v4, 0x0

    .line 132
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v6, "SELECT bid,channelID,count,TS FROM videofav"

    .line 134
    .local v6, "querySql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 135
    if-nez v4, :cond_2

    .line 165
    if-eqz v4, :cond_0

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v9

    .line 163
    .end local v6    # "querySql":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 138
    .restart local v6    # "querySql":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v8, "videoFavInfoTemps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 140
    const-string v10, "bid"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "bid":Ljava/lang/String;
    const-string v10, "channelID"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "channelID":Ljava/lang/String;
    const-string v10, "count"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "count":Ljava/lang/String;
    const-string v10, "TS"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "TS":Ljava/lang/String;
    new-instance v7, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;-><init>()V

    .line 150
    .local v7, "videoFavInfoTemp":Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;
    iput-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;->bid:Ljava/lang/String;

    .line 152
    iput-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;->cid:Ljava/lang/String;

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;->cnt:I

    .line 156
    iput-object v0, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;->ts:Ljava/lang/String;

    .line 158
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    .end local v0    # "TS":Ljava/lang/String;
    .end local v1    # "bid":Ljava/lang/String;
    .end local v2    # "channelID":Ljava/lang/String;
    .end local v3    # "count":Ljava/lang/String;
    .end local v6    # "querySql":Ljava/lang/String;
    .end local v7    # "videoFavInfoTemp":Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;
    .end local v8    # "videoFavInfoTemps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    :catch_0
    move-exception v5

    .line 165
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_3

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v9

    .line 163
    goto :goto_0

    .line 165
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "querySql":Ljava/lang/String;
    .restart local v8    # "videoFavInfoTemps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    :cond_4
    if-eqz v4, :cond_1

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    .end local v6    # "querySql":Ljava/lang/String;
    .end local v8    # "videoFavInfoTemps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_5

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_5
    throw v9
.end method

.method public updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "channelID"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "TS"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) FROM videofav WHERE bid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND channelID = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND TS = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    .end local v2    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "num":I
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 80
    :cond_2
    if-lez v1, :cond_3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update videofav set channelID = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',count = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',TS = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' where bid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND channelID = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND TS = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "updateSql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v3    # "updateSql":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 88
    .end local v1    # "num":I
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_4
    throw v4
.end method
