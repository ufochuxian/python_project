.class public Lcom/jiliguala/niuwa/logic/db/daometa/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private transient B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Long;

.field private t:Ljava/lang/Long;

.field private u:Ljava/lang/Long;

.field private v:Ljava/lang/Long;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "UID"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "UID"    # Ljava/lang/String;
    .param p2, "NICK"    # Ljava/lang/String;
    .param p3, "ACCESS_TOKEN"    # Ljava/lang/String;
    .param p4, "J_TOKEN"    # Ljava/lang/String;
    .param p5, "AVA"    # Ljava/lang/String;
    .param p6, "TYP"    # Ljava/lang/String;
    .param p7, "TTS"    # Ljava/lang/String;
    .param p8, "U"    # Ljava/lang/String;
    .param p9, "IS_NEW"    # Ljava/lang/Boolean;
    .param p10, "SEGP"    # Ljava/lang/String;
    .param p11, "SEGTYPE"    # Ljava/lang/String;
    .param p12, "CITY"    # Ljava/lang/String;
    .param p13, "DESC"    # Ljava/lang/String;
    .param p14, "BG"    # Ljava/lang/String;
    .param p15, "TAG_STRS"    # Ljava/lang/String;
    .param p16, "KEY_GRPTASK"    # Ljava/lang/Boolean;
    .param p17, "GUAID"    # Ljava/lang/String;
    .param p18, "MOBILE"    # Ljava/lang/String;
    .param p19, "FORUM_THREAD"    # Ljava/lang/Long;
    .param p20, "FORUM_REPLY"    # Ljava/lang/Long;
    .param p21, "FORUM_SEL"    # Ljava/lang/Long;
    .param p22, "FORUM_FAV"    # Ljava/lang/Long;
    .param p23, "FORUM_DONE"    # Ljava/lang/Boolean;
    .param p24, "CTS"    # Ljava/lang/String;
    .param p25, "MEMBER_SHIP_STATUS"    # Ljava/lang/String;
    .param p26, "MEMBER_SHIP_DUETS"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i:Ljava/lang/Boolean;

    .line 67
    iput-object p10, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j:Ljava/lang/String;

    .line 68
    iput-object p11, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k:Ljava/lang/String;

    .line 69
    iput-object p12, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l:Ljava/lang/String;

    .line 70
    iput-object p13, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m:Ljava/lang/String;

    .line 71
    iput-object p14, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p:Ljava/lang/Boolean;

    .line 74
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s:Ljava/lang/Long;

    .line 77
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->t:Ljava/lang/Long;

    .line 78
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->u:Ljava/lang/Long;

    .line 79
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->v:Ljava/lang/Long;

    .line 80
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->w:Ljava/lang/Boolean;

    .line 81
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->x:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->y:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->z:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->C:Ljava/util/List;

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    if-nez v2, :cond_0

    .line 306
    new-instance v2, Lde/greenrobot/dao/DaoException;

    const-string v3, "Entity is detached from DAO context"

    invoke-direct {v2, v3}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c()Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    move-result-object v0

    .line 309
    .local v0, "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "userToBabiesNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->C:Ljava/util/List;

    if-nez v2, :cond_1

    .line 312
    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->C:Ljava/util/List;

    .line 314
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v0    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
    .end local v1    # "userToBabiesNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->C:Ljava/util/List;

    return-object v2

    .line 314
    .restart local v0    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
    .restart local v1    # "userToBabiesNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized B()V
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->C:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public C()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/daometa/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->D:Ljava/util/List;

    if-nez v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Lde/greenrobot/dao/DaoException;

    const-string v3, "Entity is detached from DAO context"

    invoke-direct {v2, v3}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d()Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    move-result-object v0

    .line 331
    .local v0, "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 332
    .local v1, "userToGroupsNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->D:Ljava/util/List;

    if-nez v2, :cond_1

    .line 334
    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->D:Ljava/util/List;

    .line 336
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v0    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;
    .end local v1    # "userToGroupsNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->D:Ljava/util/List;

    return-object v2

    .line 336
    .restart local v0    # "targetDao":Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;
    .restart local v1    # "userToGroupsNew":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized D()V
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->D:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public E()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->delete(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->update(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public G()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->refresh(Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 1
    .param p1, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->A:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->B:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "IS_NEW"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0
    .param p1, "FORUM_THREAD"    # Ljava/lang/Long;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s:Ljava/lang/Long;

    .line 244
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "UID"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "KEY_GRPTASK"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p:Ljava/lang/Boolean;

    .line 220
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0
    .param p1, "FORUM_REPLY"    # Ljava/lang/Long;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->t:Ljava/lang/Long;

    .line 252
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "NICK"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "FORUM_DONE"    # Ljava/lang/Boolean;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->w:Ljava/lang/Boolean;

    .line 276
    return-void
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0
    .param p1, "FORUM_SEL"    # Ljava/lang/Long;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->u:Ljava/lang/Long;

    .line 260
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "ACCESS_TOKEN"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Long;)V
    .locals 0
    .param p1, "FORUM_FAV"    # Ljava/lang/Long;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->v:Ljava/lang/Long;

    .line 268
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "J_TOKEN"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "AVA"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "TYP"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "TTS"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "U"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "SEGP"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "SEGTYPE"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1, "CITY"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1, "DESC"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .param p1, "BG"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .param p1, "TAG_STRS"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .param p1, "GUAID"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .param p1, "MOBILE"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .param p1, "CTS"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->x:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .param p1, "MEMBER_SHIP_STATUS"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->y:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public s()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s:Ljava/lang/Long;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .param p1, "MEMBER_SHIP_DUETS"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->z:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public t()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->t:Ljava/lang/Long;

    return-object v0
.end method

.method public u()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->u:Ljava/lang/Long;

    return-object v0
.end method

.method public v()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->v:Ljava/lang/Long;

    return-object v0
.end method

.method public w()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->w:Ljava/lang/Boolean;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->x:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->y:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/g;->z:Ljava/lang/String;

    return-object v0
.end method
