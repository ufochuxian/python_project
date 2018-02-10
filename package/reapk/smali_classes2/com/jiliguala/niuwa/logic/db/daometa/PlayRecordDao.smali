.class public Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/jiliguala/niuwa/logic/db/daometa/e;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "PLAY_RECORD"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 42
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'PLAY_RECORD\' (\'COURSE__ID\' TEXT PRIMARY KEY NOT NULL ,\'PROGRESS\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void

    .line 41
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

    const-string v2, "\'PLAY_RECORD\'"

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
    .line 68
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/e;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .param p2, "rowId"    # J

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/e;I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .param p3, "offset"    # I

    .prologue
    .line 84
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b(Ljava/lang/String;)V

    .line 86
    return-void

    .line 85
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/e;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "PROGRESS":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    add-int/lit8 v1, p2, 0x0

    .line 75
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, p2, 0x1

    .line 76
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/e;
    return-object v0

    .line 76
    .end local v0    # "entity":Lcom/jiliguala/niuwa/logic/db/daometa/e;
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/e;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/e;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/e;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
