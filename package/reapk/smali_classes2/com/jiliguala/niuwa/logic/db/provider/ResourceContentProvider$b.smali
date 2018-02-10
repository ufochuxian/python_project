.class Lcom/jiliguala/niuwa/logic/db/provider/ResourceContentProvider$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/db/provider/ResourceContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    const-string v0, "niu_wa"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 478
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 482
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_fav ( _id INTEGER PRIMARY KEY AUTOINCREMENT, babyId TEXT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v0, "CREATE TABLE IF NOT EXISTS video_fav ( _id INTEGER PRIMARY KEY AUTOINCREMENT, babyId TEXT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    const-string v0, "CREATE TABLE IF NOT EXISTS offline_res ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, download_status TEXT, type INTEGER, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v0, "CREATE TABLE IF NOT EXISTS local_storage ( _id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_recent_play ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    const-string v0, "CREATE TABLE IF NOT EXISTS video_recent_play ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    const-string v0, "CREATE TABLE IF NOT EXISTS user_info_table ( _id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, user_meta BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v1, 0x4

    .line 495
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 496
    const-string v0, "delete from audio_fav"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    const-string v0, "delete from video_fav"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 499
    :cond_0
    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 500
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_recent_play ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 501
    const-string v0, "CREATE TABLE IF NOT EXISTS video_recent_play ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    :cond_1
    if-lt p3, v1, :cond_2

    .line 505
    const-string v0, "CREATE TABLE IF NOT EXISTS user_info_table ( _id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, user_meta BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    :cond_2
    if-gt p2, v1, :cond_3

    const/4 v0, 0x5

    if-lt p3, v0, :cond_3

    .line 509
    const-string v0, "delete from user_info_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    :cond_3
    return-void
.end method
