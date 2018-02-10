.class public Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "BABY_INFO"


# instance fields
.field private a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private b:Lde/greenrobot/dao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/Query",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 49
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 50
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 55
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'BABY_INFO\' (\'BABY__ID\' TEXT PRIMARY KEY NOT NULL ,\'BABY__NICK\' TEXT,\'BABY__BD\' TEXT,\'BABY__PRT\' TEXT,\'BABY__AVA\' TEXT,\'BABY__GENDER\' TEXT,\'BABY__USER__ID\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void

    .line 54
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
    .line 67
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

    const-string v2, "\'BABY_INFO\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void

    .line 67
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "lock"    # Z

    .prologue
    .line 200
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    .line 201
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    .line 203
    .local v1, "offset":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->loadCurrentOther(Lde/greenrobot/dao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 204
    .local v2, "userInfo":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V

    .line 206
    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .locals 9
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->assertSinglePk()V

    .line 211
    if-nez p1, :cond_0

    .line 230
    :goto_0
    return-object v5

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v6, "WHERE "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, "T"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "sql":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 221
    .local v3, "keyArray":[Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 224
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 225
    .local v0, "available":Z
    if-nez v0, :cond_1

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 227
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 228
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected unique result, but count was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v0    # "available":Z
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    .line 230
    .restart local v0    # "available":Z
    :cond_2
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p0, v2, v5}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "T"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "T0"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, " FROM BABY_INFO T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, " LEFT JOIN USER_INFO T0 ON T.\'BABY__USER__ID\'=T0.\'UID\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->c:Ljava/lang/String;

    .line 196
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->c:Ljava/lang/String;

    return-object v1
.end method

.method public a(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 117
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/a;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .param p2, "rowId"    # J

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 239
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V

    .line 244
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2, v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 248
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 256
    :cond_1
    return-object v1

    .line 251
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    :cond_2
    throw v2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "BABY_USER_ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b:Lde/greenrobot/dao/query/Query;

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 174
    .local v1, "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    sget-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->g:Lde/greenrobot/dao/Property;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 175
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b:Lde/greenrobot/dao/query/Query;

    .line 177
    .end local v1    # "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b:Lde/greenrobot/dao/query/Query;

    invoke-virtual {v2}, Lde/greenrobot/dao/query/Query;->forCurrentThread()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    .line 179
    .local v0, "query":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    invoke-virtual {v0, v4, p1}, Lde/greenrobot/dao/query/Query;->setParameter(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 177
    .end local v0    # "query":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 271
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/a;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g(Ljava/lang/String;)V

    .line 145
    return-void

    .line 139
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_2
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 142
    :cond_3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 143
    :cond_4
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 144
    :cond_5
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method protected a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/a;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/a;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 75
    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "BABY_NICK":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 79
    const/4 v6, 0x2

    invoke-virtual {p1, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "BABY_BD":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 84
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :cond_1
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "BABY_PRT":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 89
    const/4 v6, 0x4

    invoke-virtual {p1, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "BABY_AVA":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 94
    const/4 v6, 0x5

    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "BABY_GENDER":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 99
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :cond_4
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "BABY_USER_ID":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 104
    const/4 v6, 0x7

    invoke-virtual {p1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_5
    return-void
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/a;)V
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/a;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    .line 112
    return-void
.end method

.method protected synthetic attachEntity(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/a;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 123
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    add-int/lit8 v1, p2, 0x0

    .line 124
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    .line 125
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v7

    :goto_0
    add-int/lit8 v3, p2, 0x2

    .line 126
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v7

    :goto_1
    add-int/lit8 v4, p2, 0x3

    .line 127
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v7

    :goto_2
    add-int/lit8 v5, p2, 0x4

    .line 128
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v7

    :goto_3
    add-int/lit8 v6, p2, 0x5

    .line 129
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v7

    :goto_4
    add-int/lit8 v8, p2, 0x6

    .line 130
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_5
    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/logic/db/daometa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    return-object v0

    .line 125
    .end local v0    # "entity":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_1
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 127
    :cond_2
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 128
    :cond_3
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 129
    :cond_4
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 130
    :cond_5
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method public b(Lcom/jiliguala/niuwa/logic/db/daometa/a;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/a;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 261
    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/a;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b(Lcom/jiliguala/niuwa/logic/db/daometa/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/a;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/a;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
