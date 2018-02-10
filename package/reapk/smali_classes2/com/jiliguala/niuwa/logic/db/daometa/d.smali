.class public Lcom/jiliguala/niuwa/logic/db/daometa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private transient d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private transient e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

.field private f:Lcom/jiliguala/niuwa/logic/db/daometa/g;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "GROUP_ID"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "GROUP_ID"    # Ljava/lang/String;
    .param p2, "GROUP_TITLE"    # Ljava/lang/String;
    .param p3, "GROUP_USER_ID"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 1
    .param p1, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d()Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->f:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->g:Ljava/lang/String;

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "GROUP_ID"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "GROUP_TITLE"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "GROUP_USER_ID"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public d()Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->c:Ljava/lang/String;

    .line 75
    .local v0, "__key":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->g:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->g:Ljava/lang/String;

    if-eq v3, v0, :cond_2

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    if-nez v3, :cond_1

    .line 77
    new-instance v3, Lde/greenrobot/dao/DaoException;

    const-string v4, "Entity is detached from DAO context"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v1

    .line 80
    .local v1, "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 81
    .local v2, "userInfoNew":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    monitor-enter p0

    .line 82
    :try_start_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->f:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 83
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->g:Ljava/lang/String;

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v1    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    .end local v2    # "userInfoNew":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->f:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    return-object v3

    .line 84
    .restart local v1    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    .restart local v2    # "userInfoNew":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public e()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->delete(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->update(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/d;->e:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->refresh(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
