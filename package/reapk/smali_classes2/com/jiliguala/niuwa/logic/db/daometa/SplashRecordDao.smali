.class public Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/jiliguala/niuwa/logic/db/daometa/f;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "SPLASH_RECORD"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 40
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 41
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'SPLASH_RECORD\' (\'SPLAHS__ID\' TEXT PRIMARY KEY NOT NULL ,\'TIMES\' INTEGER,\'CLICKED\' INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void

    .line 40
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'SPLASH_RECORD\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void

    .line 49
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 73
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/f;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/f;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .param p2, "rowId"    # J

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/f;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a(Ljava/lang/Integer;)V

    .line 92
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a(Ljava/lang/Boolean;)V

    .line 93
    return-void

    .line 91
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/f;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b()Ljava/lang/Integer;

    move-result-object v1

    .line 60
    .local v1, "TIMES":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 61
    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c()Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    .local v0, "CLICKED":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 66
    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 68
    :cond_1
    return-void

    .line 66
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    add-int/lit8 v1, p2, 0x0

    .line 80
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, p2, 0x1

    .line 81
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    add-int/lit8 v4, p2, 0x2

    .line 82
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/f;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 84
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    return-object v0

    .line 81
    .end local v0    # "entity":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_1
    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/f;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/f;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/f;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
