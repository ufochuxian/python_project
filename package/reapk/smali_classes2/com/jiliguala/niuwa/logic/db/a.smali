.class public Lcom/jiliguala/niuwa/logic/db/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/jiliguala/niuwa/logic/db/a;


# instance fields
.field private b:Lcom/jiliguala/niuwa/logic/db/daometa/b$b;

.field private c:Lcom/jiliguala/niuwa/logic/db/daometa/b;

.field private d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

.field private e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

.field private f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

.field private g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

.field private h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

.field private i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a;->a:Lcom/jiliguala/niuwa/logic/db/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/db/a;->f()V

    .line 43
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/db/a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/a;->a:Lcom/jiliguala/niuwa/logic/db/a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a;->a:Lcom/jiliguala/niuwa/logic/db/a;

    .line 49
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/a;->a:Lcom/jiliguala/niuwa/logic/db/a;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/c;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "niuwa_user"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/db/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->b:Lcom/jiliguala/niuwa/logic/db/daometa/b$b;

    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/daometa/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->b:Lcom/jiliguala/niuwa/logic/db/daometa/b$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/daometa/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->c:Lcom/jiliguala/niuwa/logic/db/daometa/b;

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->c:Lcom/jiliguala/niuwa/logic/db/daometa/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->a()Lcom/jiliguala/niuwa/logic/db/daometa/c;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->b()Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->c()Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->d()Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->e()Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->d:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/c;->f()Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
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
    .line 153
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->g:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)V
    .locals 1
    .param p1, "record"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 208
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/daometa/f;)V
    .locals 1
    .param p1, "record"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 172
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "groupInfo"    # Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "groupInfoEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v1, "info":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->deleteAll()V

    .line 124
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 33
    .param p1, "userInfo"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "User info is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, "tag_strs":Ljava/lang/String;
    new-instance v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v11, v11, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    .line 81
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v12, v12, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->grptask:Z

    move/from16 v18, v0

    .line 82
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    const-wide/16 v22, 0x0

    .line 83
    :goto_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    const-wide/16 v22, 0x0

    .line 84
    :goto_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    const-wide/16 v24, 0x0

    :goto_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    const-wide/16 v24, 0x0

    .line 85
    :goto_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v25, v0

    if-nez v25, :cond_7

    const/16 v25, 0x0

    .line 86
    :goto_4
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    const-string v27, ""

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    move-object/from16 v28, v0

    if-nez v28, :cond_9

    const-string v28, ""

    :goto_6
    invoke-direct/range {v2 .. v28}, Lcom/jiliguala/niuwa/logic/db/daometa/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v2, "userInfoEntity":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-eqz v4, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->deleteAll()V

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/jiliguala/niuwa/logic/db/daometa/g;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->insertInTx([Ljava/lang/Object;)V

    .line 95
    :cond_2
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v30, "babyInfoEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 98
    .local v29, "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    new-instance v3, Lcom/jiliguala/niuwa/logic/db/daometa/a;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->prt:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->gender:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-direct/range {v3 .. v10}, Lcom/jiliguala/niuwa/logic/db/daometa/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v3, "info":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 82
    .end local v2    # "userInfoEntity":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .end local v3    # "info":Lcom/jiliguala/niuwa/logic/db/daometa/a;
    .end local v29    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .end local v30    # "babyInfoEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    move-wide/from16 v22, v0

    goto/16 :goto_0

    .line 83
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    move-wide/from16 v22, v0

    goto/16 :goto_1

    .line 84
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    move-wide/from16 v24, v0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    move-wide/from16 v24, v0

    goto/16 :goto_3

    .line 85
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->done:Z

    move/from16 v25, v0

    goto/16 :goto_4

    .line 86
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->status:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->duets:Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_6

    .line 102
    .restart local v2    # "userInfoEntity":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .restart local v30    # "babyInfoEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/daometa/a;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-eqz v4, :cond_b

    .line 103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->deleteAll()V

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 107
    :cond_b
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v32, "groupInfoEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/daometa/d;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    .line 109
    .local v31, "group":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    new-instance v3, Lcom/jiliguala/niuwa/logic/db/daometa/d;

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Lcom/jiliguala/niuwa/logic/db/daometa/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v3, "info":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 112
    .end local v3    # "info":Lcom/jiliguala/niuwa/logic/db/daometa/d;
    .end local v31    # "group":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-eqz v4, :cond_d

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->deleteAll()V

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 116
    :cond_d
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    if-eqz v3, :cond_1

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .line 197
    .local v2, "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->_id:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v2    # "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao$Properties;->a:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v0}, Lde/greenrobot/dao/Property;->notIn(Ljava/util/Collection;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/f;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 202
    .end local v0    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/f;>;"
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
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
    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao$Properties;->c:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->b:Lcom/jiliguala/niuwa/logic/db/daometa/b$b;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->b:Lcom/jiliguala/niuwa/logic/db/daometa/b$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/daometa/b$b;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/db/daometa/f;)V
    .locals 1
    .param p1, "record"    # Lcom/jiliguala/niuwa/logic/db/daometa/f;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 178
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao$Properties;->a:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->deleteAll()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->f:Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;->deleteAll()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->g:Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/GroupInfoDao;->deleteAll()V

    .line 140
    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 3
    .param p1, "courseId"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao$Properties;->a:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a;->e:Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/g;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .line 149
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/db/daometa/g;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->h:Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->deleteAll()V

    .line 191
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a;->i:Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->deleteByKey(Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method
