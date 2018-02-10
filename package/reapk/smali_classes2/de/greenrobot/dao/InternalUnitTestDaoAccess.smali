.class public Lde/greenrobot/dao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Lde/greenrobot/dao/identityscope/IdentityScope;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;TK;>;>;",
            "Lde/greenrobot/dao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<Lde/greenrobot/dao/AbstractDao<TT;TK;>;>;"
    .local p3, "identityScope":Lde/greenrobot/dao/identityscope/IdentityScope;, "Lde/greenrobot/dao/identityscope/IdentityScope<**>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v1, p1, p2}, Lde/greenrobot/dao/internal/DaoConfig;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V

    .line 33
    .local v1, "daoConfig":Lde/greenrobot/dao/internal/DaoConfig;
    invoke-virtual {v1, p3}, Lde/greenrobot/dao/internal/DaoConfig;->setIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScope;)V

    .line 34
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lde/greenrobot/dao/internal/DaoConfig;

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lde/greenrobot/dao/AbstractDao<TT;TK;>;>;"
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/dao/AbstractDao;

    iput-object v2, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 36
    return-void
.end method


# virtual methods
.method public getDao()Lde/greenrobot/dao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lde/greenrobot/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()[Lde/greenrobot/dao/Property;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getProperties()[Lde/greenrobot/dao/Property;

    move-result-object v0

    return-object v0
.end method

.method public isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lde/greenrobot/dao/InternalUnitTestDaoAccess;, "Lde/greenrobot/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
