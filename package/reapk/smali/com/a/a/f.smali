.class Lcom/a/a/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "store"

.field protected static final b:Ljava/lang/String; = "long_store"

.field protected static final c:Ljava/lang/String; = "events"

.field protected static final d:Ljava/lang/String; = "identifys"

.field static e:Lcom/a/a/f; = null

.field private static final f:Ljava/lang/String; = "com.amplitude.api.DatabaseHelper"

.field private static final g:Ljava/lang/String; = "key"

.field private static final h:Ljava/lang/String; = "value"

.field private static final i:Ljava/lang/String; = "id"

.field private static final j:Ljava/lang/String; = "event"

.field private static final k:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

.field private static final l:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

.field private static final m:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final n:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final o:Lcom/a/a/d;


# instance fields
.field private p:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/f;->o:Lcom/a/a/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "com.amplitude.api"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    const-string v0, "com.amplitude.api"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/f;->p:Ljava/io/File;

    .line 41
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;J)J
    .locals 12
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "n"    # J

    .prologue
    .line 279
    monitor-enter p0

    const-wide/16 v2, -0x1

    .line 280
    .local v2, "nthEventId":J
    const/4 v5, 0x0

    .line 282
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT id FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT 1 OFFSET "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 285
    const-wide/16 v2, -0x1

    .line 287
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 294
    :goto_0
    if-eqz v5, :cond_0

    .line 295
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 288
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "query":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_3
    sget-object v6, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    invoke-virtual {v6, v7, v1}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 291
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    .end local v4    # "query":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-object v6, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNthEventId from %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    if-eqz v5, :cond_1

    .line 295
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 279
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 294
    :catchall_1
    move-exception v6

    if-eqz v5, :cond_2

    .line 295
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 298
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/a/a/f;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lcom/a/a/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/a/f;->e:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/a/a/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/a/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/a/a/f;->e:Lcom/a/a/f;

    .line 47
    :cond_0
    sget-object v0, Lcom/a/a/f;->e:Lcom/a/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 20
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "upToId"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .local v16, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v11, 0x0

    .line 217
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 218
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "event"

    aput-object v5, v4, v3

    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-ltz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id <= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "id ASC"

    const-wide/16 v18, 0x0

    cmp-long v3, p4, v18

    if-ltz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 220
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 222
    .local v14, "eventId":J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 224
    .local v13, "event":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v17, "obj":Lorg/json/JSONObject;
    const-string v3, "event_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 228
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "event":Ljava/lang/String;
    .end local v14    # "eventId":J
    .end local v17    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 229
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v4, "com.amplitude.api.DatabaseHelper"

    const-string v5, "getEvents from %s failed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    if-eqz v11, :cond_0

    .line 232
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    monitor-exit p0

    return-object v16

    .line 218
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 231
    :cond_3
    if-eqz v11, :cond_4

    .line 232
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/f;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 214
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 231
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catchall_1
    move-exception v3

    if-eqz v11, :cond_5

    .line 232
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/f;->close()V

    .line 235
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    const-string v0, "DROP TABLE IF EXISTS store"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "DROP TABLE IF EXISTS long_store"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "DROP TABLE IF EXISTS identifys"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/a/a/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;J)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "maxId"    # J

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvents from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    :try_start_3
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 312
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 317
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 318
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 157
    monitor-enter p0

    const-wide/16 v4, -0x1

    .line 159
    .local v4, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 163
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 164
    sget-object v3, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "Insert into %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "addEvent to %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-direct {p0}, Lcom/a/a/f;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 157
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 171
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 172
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized c(Ljava/lang/String;J)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvent from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    :try_start_3
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 331
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 336
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 337
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 185
    monitor-enter p0

    const/4 v11, 0x0

    .line 186
    .local v11, "value":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 188
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "key"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "value"

    aput-object v3, v2, v1

    const-string v3, "key = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "store"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 196
    .end local v11    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 197
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit p0

    return-object v11

    .line 191
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    goto :goto_0

    .line 193
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v10

    .line 194
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v1, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "getValue failed"

    invoke-virtual {v1, v2, v3, v10}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    if-eqz v9, :cond_3

    .line 197
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 185
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v11    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 196
    .restart local v11    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_4

    .line 197
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 200
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized e(Ljava/lang/String;)J
    .locals 11
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 252
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 253
    .local v2, "numberRows":J
    const/4 v5, 0x0

    .line 255
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 256
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 258
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 262
    if-eqz v5, :cond_0

    .line 263
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v6, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNumberRows for %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    if-eqz v5, :cond_1

    .line 263
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 252
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 262
    :catchall_1
    move-exception v6

    if-eqz v5, :cond_2

    .line 263
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 266
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 343
    iget-object v1, p0, Lcom/a/a/f;->p:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "delete failed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a()J
    .locals 2

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0}, Lcom/a/a/f;->e(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->a(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)J
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1}, Lcom/a/a/f;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 107
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "long_store"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/f;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "long_store"

    invoke-virtual {p0, v0, p1, p2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "store"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/f;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "store"

    invoke-virtual {p0, v0, p1, p2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    monitor-enter p0

    const-wide/16 v4, -0x1

    .line 113
    .local v4, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 114
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    instance-of v3, p3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 117
    const-string v3, "value"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, p1, v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 122
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 123
    sget-object v3, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "Insert failed"

    invoke-virtual {v3, v6, v7}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit p0

    return-wide v4

    .line 119
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string v3, "value"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 125
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v3, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "insertOrReplaceKeyValue failed"

    invoke-virtual {v3, v6, v7, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-direct {p0}, Lcom/a/a/f;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 111
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 130
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 131
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method declared-synchronized a(JJ)Ljava/util/List;
    .locals 7
    .param p1, "upToId"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    const-string v1, "events"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/f;->a(Ljava/lang/String;JJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()J
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0}, Lcom/a/a/f;->e(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->a(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)J
    .locals 2
    .param p1, "identifyEvent"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1}, Lcom/a/a/f;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    monitor-enter p0

    const-wide/16 v2, -0x1

    .line 138
    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    int-to-long v2, v4

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v4, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v5, "com.amplitude.api.DatabaseHelper"

    const-string v6, "deleteKeyFromTable failed"

    invoke-virtual {v4, v5, v6, v1}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    :try_start_3
    invoke-virtual {p0}, Lcom/a/a/f;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 136
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 143
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {p0}, Lcom/a/a/f;->close()V

    .line 144
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized b(JJ)Ljava/util/List;
    .locals 7
    .param p1, "upToId"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v1, "identifys"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/f;->a(Ljava/lang/String;JJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()J
    .locals 4

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/f;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/a/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v0, "store"

    invoke-direct {p0, v0, p1}, Lcom/a/a/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(J)V
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-string v0, "long_store"

    invoke-direct {p0, v0, p1}, Lcom/a/a/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(J)V
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/a/a/f;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method declared-synchronized e(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->c(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/f;->c(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 63
    if-le p2, p3, :cond_1

    .line 64
    sget-object v0, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.DatabaseHelper"

    const-string v2, "onUpgrade() with invalid oldVersion and newVersion"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p1}, Lcom/a/a/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 73
    packed-switch p2, :pswitch_data_0

    .line 89
    sget-object v0, Lcom/a/a/f;->o:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade() with unknown oldVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, p1}, Lcom/a/a/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x2

    if-le p3, v0, :cond_0

    .line 80
    :pswitch_2
    const-string v0, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
