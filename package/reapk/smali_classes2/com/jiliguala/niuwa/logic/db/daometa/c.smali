.class public Lcom/jiliguala/niuwa/logic/db/daometa/c;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "SourceFile"


# instance fields
.field private final a:Lde/greenrobot/dao/internal/DaoConfig;

.field private final b:Lde/greenrobot/dao/internal/DaoConfig;

.field private final c:Lde/greenrobot/dao/internal/DaoConfig;

.field private final d:Lde/greenrobot/dao/internal/DaoConfig;

.field private final e:Lde/greenrobot/dao/internal/DaoConfig;

.field private final f:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

.field private final g:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

.field private final h:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

.field private final i:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

.field private final j:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->a:Lde/greenrobot/dao/internal/DaoConfig;

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->a:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 40
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b:Lde/greenrobot/dao/internal/DaoConfig;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 43
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c:Lde/greenrobot/dao/internal/DaoConfig;

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 46
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d:Lde/greenrobot/dao/internal/DaoConfig;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 49
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->e:Lde/greenrobot/dao/internal/DaoConfig;

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->e:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->a:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->f:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->g:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->h:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->i:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    .line 56
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->e:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->j:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    .line 58
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->f:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 59
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->g:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 60
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->h:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 61
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->i:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 62
    const-class v0, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->j:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->a:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->e:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 71
    return-void
.end method

.method public b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->f:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    return-object v0
.end method

.method public c()Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->g:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    return-object v0
.end method

.method public d()Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->h:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    return-object v0
.end method

.method public e()Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->i:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    return-object v0
.end method

.method public f()Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/c;->j:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    return-object v0
.end method
