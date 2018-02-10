.class public Lcom/jiliguala/niuwa/logic/db/daometa/b;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/b$a;,
        Lcom/jiliguala/niuwa/logic/db/daometa/b$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x6


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 66
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->registerDaoClass(Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->registerDaoClass(Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->registerDaoClass(Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->registerDaoClass(Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->registerDaoClass(Ljava/lang/Class;)V

    .line 71
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 22
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 23
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 24
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 26
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 31
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/db/daometa/c;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/b;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/b;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/db/daometa/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/jiliguala/niuwa/logic/db/daometa/c;
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/b;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/b;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->a()Lcom/jiliguala/niuwa/logic/db/daometa/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->a(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/jiliguala/niuwa/logic/db/daometa/c;

    move-result-object v0

    return-object v0
.end method
