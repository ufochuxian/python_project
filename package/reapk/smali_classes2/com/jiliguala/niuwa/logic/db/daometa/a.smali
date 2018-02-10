.class public Lcom/jiliguala/niuwa/logic/db/daometa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private transient h:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private transient i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

.field private j:Lcom/jiliguala/niuwa/logic/db/daometa/g;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_ID"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_ID"    # Ljava/lang/String;
    .param p2, "BABY_NICK"    # Ljava/lang/String;
    .param p3, "BABY_BD"    # Ljava/lang/String;
    .param p4, "BABY_PRT"    # Ljava/lang/String;
    .param p5, "BABY_AVA"    # Ljava/lang/String;
    .param p6, "BABY_GENDER"    # Ljava/lang/String;
    .param p7, "BABY_USER_ID"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 1
    .param p1, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c()Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->j:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 131
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->k:Ljava/lang/String;

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_ID"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_NICK"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_BD"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_PRT"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_AVA"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->e:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_GENDER"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "BABY_USER_ID"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public h()Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->g:Ljava/lang/String;

    .line 114
    .local v0, "__key":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->k:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->k:Ljava/lang/String;

    if-eq v3, v0, :cond_2

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    if-nez v3, :cond_1

    .line 116
    new-instance v3, Lde/greenrobot/dao/DaoException;

    const-string v4, "Entity is detached from DAO context"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v1

    .line 119
    .local v1, "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 120
    .local v2, "userInfoNew":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    monitor-enter p0

    .line 121
    :try_start_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->j:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 122
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->k:Ljava/lang/String;

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v1    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
    .end local v2    # "userInfoNew":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->j:Lcom/jiliguala/niuwa/logic/db/daometa/g;

    return-object v3

    .line 123
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

.method public i()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->delete(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->update(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->refresh(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
