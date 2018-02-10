.class public Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "GROUP_INFO"


# instance fields
.field private a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private b:Lde/greenrobot/dao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/Query",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
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
    .line 40
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 45
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 46
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 51
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'GROUP_INFO\' (\'GROUP__ID\' TEXT PRIMARY KEY NOT NULL ,\'GROUP__TITLE\' TEXT,\'GROUP__USER__ID\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void

    .line 50
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
    .line 59
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

    const-string v2, "\'GROUP_INFO\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    return-void

    .line 59
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "lock"    # Z

    .prologue
    .line 164
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    .line 165
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    .line 167
    .local v1, "offset":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->loadCurrentOther(Lde/greenrobot/dao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 168
    .local v2, "userInfo":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V

    .line 170
    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .locals 9
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->assertSinglePk()V

    .line 175
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-object v5

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v6, "WHERE "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v6, "T"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "sql":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 185
    .local v3, "keyArray":[Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 188
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 189
    .local v0, "available":Z
    if-nez v0, :cond_1

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 191
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
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

    .line 196
    .end local v0    # "available":Z
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    throw v5

    .line 194
    .restart local v0    # "available":Z
    :cond_2
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p0, v2, v5}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "T"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "T0"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " FROM GROUP_INFO T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " LEFT JOIN USER_INFO T0 ON T.\'GROUP__USER__ID\'=T0.\'UID\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->c:Ljava/lang/String;

    .line 160
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->c:Ljava/lang/String;

    return-object v1
.end method

.method public a(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 89
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/d;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .param p2, "rowId"    # J

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a()Ljava/lang/String;

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
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 203
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V

    .line 208
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2, v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 212
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/Cursor;Z)Lcom/jiliguala/niuwa/logic/db/daometa/d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 220
    :cond_1
    return-object v1

    .line 215
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 218
    :cond_2
    throw v2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "GROUP_USER_ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b:Lde/greenrobot/dao/query/Query;

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 138
    .local v1, "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    sget-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao$Properties;->c:Lde/greenrobot/dao/Property;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 139
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b:Lde/greenrobot/dao/query/Query;

    .line 141
    .end local v1    # "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b:Lde/greenrobot/dao/query/Query;

    invoke-virtual {v2}, Lde/greenrobot/dao/query/Query;->forCurrentThread()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    .line 143
    .local v0, "query":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    invoke-virtual {v0, v4, p1}, Lde/greenrobot/dao/query/Query;->setParameter(ILjava/lang/Object;)V

    .line 144
    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 141
    .end local v0    # "query":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
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
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/d;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c(Ljava/lang/String;)V

    .line 109
    return-void

    .line 107
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/d;)V
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/d;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "GROUP_TITLE":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "GROUP_USER_ID":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 76
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/d;)V
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/d;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    .line 84
    return-void
.end method

.method protected synthetic attachEntity(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/d;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    add-int/lit8 v1, p2, 0x0

    .line 96
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, p2, 0x1

    .line 97
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    add-int/lit8 v4, p2, 0x2

    .line 98
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    return-object v0

    .line 97
    .end local v0    # "entity":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_1
    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public b(Lcom/jiliguala/niuwa/logic/db/daometa/d;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/d;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 123
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
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 225
    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 228
    throw v0
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/d;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b(Lcom/jiliguala/niuwa/logic/db/daometa/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/d;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/d;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
