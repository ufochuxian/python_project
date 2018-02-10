.class public Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/jiliguala/niuwa/logic/db/daometa/g;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "USER_INFO"


# instance fields
.field private a:Lcom/jiliguala/niuwa/logic/db/daometa/c;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/jiliguala/niuwa/logic/db/daometa/c;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 61
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    .line 62
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 67
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'USER_INFO\' (\'UID\' TEXT PRIMARY KEY NOT NULL ,\'NICK\' TEXT,\'ACCESS__TOKEN\' TEXT,\'J__TOKEN\' TEXT,\'AVA\' TEXT,\'TYP\' TEXT,\'TTS\' TEXT,\'U\' TEXT,\'IS__NEW\' INTEGER,\'SEGP\' TEXT,\'SEGTYPE\' TEXT,\'CITY\' TEXT,\'DESC\' TEXT,\'BG\' TEXT,\'TAG__STRS\' TEXT,\'KEY__GRPTASK\' INTEGER,\'GUAID\' TEXT,\'MOBILE\' TEXT,\'FORUM__THREAD\' INTEGER,\'FORUM__REPLY\' INTEGER,\'FORUM__SEL\' INTEGER,\'FORUM__FAV\' INTEGER,\'FORUM__DONE\' INTEGER,\'CTS\' TEXT,\'MEMBER__SHIP__STATUS\' TEXT,\'MEMBER__SHIP__DUETS\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    return-void

    .line 66
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
    .line 98
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

    const-string v2, "\'USER_INFO\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    return-void

    .line 98
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
    .line 243
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/g;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .param p2, "rowId"    # J

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/g;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 283
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b(Ljava/lang/String;)V

    .line 285
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f(Ljava/lang/String;)V

    .line 289
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g(Ljava/lang/String;)V

    .line 290
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h(Ljava/lang/String;)V

    .line 291
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a(Ljava/lang/Boolean;)V

    .line 292
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i(Ljava/lang/String;)V

    .line 293
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k(Ljava/lang/String;)V

    .line 295
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_b
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l(Ljava/lang/String;)V

    .line 296
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_d
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n(Ljava/lang/String;)V

    .line 298
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_e
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b(Ljava/lang/Boolean;)V

    .line 299
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_f
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o(Ljava/lang/String;)V

    .line 300
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_10
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_11
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a(Ljava/lang/Long;)V

    .line 302
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_12
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b(Ljava/lang/Long;)V

    .line 303
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_13
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c(Ljava/lang/Long;)V

    .line 304
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    :goto_14
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d(Ljava/lang/Long;)V

    .line 305
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    :goto_15
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c(Ljava/lang/Boolean;)V

    .line 306
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_17
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_18
    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s(Ljava/lang/String;)V

    .line 309
    return-void

    .line 284
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 285
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 286
    :cond_2
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 287
    :cond_3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 288
    :cond_4
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 289
    :cond_5
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 290
    :cond_6
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 291
    :cond_7
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_7

    :cond_8
    move v0, v3

    goto :goto_19

    .line 292
    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 293
    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 294
    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 295
    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 296
    :cond_d
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 297
    :cond_e
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 298
    :cond_f
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_e

    :cond_10
    move v0, v3

    goto :goto_1a

    .line 299
    :cond_11
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 300
    :cond_12
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 301
    :cond_13
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_11

    .line 302
    :cond_14
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_12

    .line 303
    :cond_15
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_13

    .line 304
    :cond_16
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_14

    .line 305
    :cond_17
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_18

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_15

    :cond_18
    move v2, v3

    goto :goto_1b

    .line 306
    :cond_19
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 307
    :cond_1a
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 308
    :cond_1b
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_18
.end method

.method protected a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/g;)V
    .locals 32
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .prologue
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 106
    const/16 v29, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->b()Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "NICK":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 110
    const/16 v29, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->c()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "ACCESS_TOKEN":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 115
    const/16 v29, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->d()Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, "J_TOKEN":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 120
    const/16 v29, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->e()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "AVA":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 125
    const/16 v29, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 128
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->f()Ljava/lang/String;

    move-result-object v27

    .line 129
    .local v27, "TYP":Ljava/lang/String;
    if-eqz v27, :cond_4

    .line 130
    const/16 v29, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->g()Ljava/lang/String;

    move-result-object v26

    .line 134
    .local v26, "TTS":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 135
    const/16 v29, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->h()Ljava/lang/String;

    move-result-object v28

    .line 139
    .local v28, "U":Ljava/lang/String;
    if-eqz v28, :cond_6

    .line 140
    const/16 v29, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 143
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->i()Ljava/lang/Boolean;

    move-result-object v16

    .line 144
    .local v16, "IS_NEW":Ljava/lang/Boolean;
    if-eqz v16, :cond_7

    .line 145
    const/16 v29, 0x9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_19

    const-wide/16 v30, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->j()Ljava/lang/String;

    move-result-object v23

    .line 149
    .local v23, "SEGP":Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 150
    const/16 v29, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 153
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->k()Ljava/lang/String;

    move-result-object v24

    .line 154
    .local v24, "SEGTYPE":Ljava/lang/String;
    if-eqz v24, :cond_9

    .line 155
    const/16 v29, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 158
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->l()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "CITY":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 160
    const/16 v29, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 163
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->m()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "DESC":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 165
    const/16 v29, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 168
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->n()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "BG":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 170
    const/16 v29, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->o()Ljava/lang/String;

    move-result-object v25

    .line 174
    .local v25, "TAG_STRS":Ljava/lang/String;
    if-eqz v25, :cond_d

    .line 175
    const/16 v29, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->p()Ljava/lang/Boolean;

    move-result-object v18

    .line 179
    .local v18, "KEY_GRPTASK":Ljava/lang/Boolean;
    if-eqz v18, :cond_e

    .line 180
    const/16 v29, 0x10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1a

    const-wide/16 v30, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 183
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->q()Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "GUAID":Ljava/lang/String;
    if-eqz v15, :cond_f

    .line 185
    const/16 v29, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->r()Ljava/lang/String;

    move-result-object v21

    .line 189
    .local v21, "MOBILE":Ljava/lang/String;
    if-eqz v21, :cond_10

    .line 190
    const/16 v29, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->s()Ljava/lang/Long;

    move-result-object v14

    .line 194
    .local v14, "FORUM_THREAD":Ljava/lang/Long;
    if-eqz v14, :cond_11

    .line 195
    const/16 v29, 0x13

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 198
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->t()Ljava/lang/Long;

    move-result-object v12

    .line 199
    .local v12, "FORUM_REPLY":Ljava/lang/Long;
    if-eqz v12, :cond_12

    .line 200
    const/16 v29, 0x14

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 203
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->u()Ljava/lang/Long;

    move-result-object v13

    .line 204
    .local v13, "FORUM_SEL":Ljava/lang/Long;
    if-eqz v13, :cond_13

    .line 205
    const/16 v29, 0x15

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 208
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->v()Ljava/lang/Long;

    move-result-object v11

    .line 209
    .local v11, "FORUM_FAV":Ljava/lang/Long;
    if-eqz v11, :cond_14

    .line 210
    const/16 v29, 0x16

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->w()Ljava/lang/Boolean;

    move-result-object v10

    .line 214
    .local v10, "FORUM_DONE":Ljava/lang/Boolean;
    if-eqz v10, :cond_15

    .line 215
    const/16 v29, 0x17

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_1b

    const-wide/16 v30, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 218
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->x()Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "CTS":Ljava/lang/String;
    if-eqz v8, :cond_16

    .line 220
    const/16 v29, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->y()Ljava/lang/String;

    move-result-object v20

    .line 224
    .local v20, "MEMBER_SHIP_STATUS":Ljava/lang/String;
    if-eqz v20, :cond_17

    .line 225
    const/16 v29, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 228
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->z()Ljava/lang/String;

    move-result-object v19

    .line 229
    .local v19, "MEMBER_SHIP_DUETS":Ljava/lang/String;
    if-eqz v19, :cond_18

    .line 230
    const/16 v29, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 232
    :cond_18
    return-void

    .line 145
    .end local v6    # "BG":Ljava/lang/String;
    .end local v7    # "CITY":Ljava/lang/String;
    .end local v8    # "CTS":Ljava/lang/String;
    .end local v9    # "DESC":Ljava/lang/String;
    .end local v10    # "FORUM_DONE":Ljava/lang/Boolean;
    .end local v11    # "FORUM_FAV":Ljava/lang/Long;
    .end local v12    # "FORUM_REPLY":Ljava/lang/Long;
    .end local v13    # "FORUM_SEL":Ljava/lang/Long;
    .end local v14    # "FORUM_THREAD":Ljava/lang/Long;
    .end local v15    # "GUAID":Ljava/lang/String;
    .end local v18    # "KEY_GRPTASK":Ljava/lang/Boolean;
    .end local v19    # "MEMBER_SHIP_DUETS":Ljava/lang/String;
    .end local v20    # "MEMBER_SHIP_STATUS":Ljava/lang/String;
    .end local v21    # "MOBILE":Ljava/lang/String;
    .end local v23    # "SEGP":Ljava/lang/String;
    .end local v24    # "SEGTYPE":Ljava/lang/String;
    .end local v25    # "TAG_STRS":Ljava/lang/String;
    :cond_19
    const-wide/16 v30, 0x0

    goto/16 :goto_0

    .line 180
    .restart local v6    # "BG":Ljava/lang/String;
    .restart local v7    # "CITY":Ljava/lang/String;
    .restart local v9    # "DESC":Ljava/lang/String;
    .restart local v18    # "KEY_GRPTASK":Ljava/lang/Boolean;
    .restart local v23    # "SEGP":Ljava/lang/String;
    .restart local v24    # "SEGTYPE":Ljava/lang/String;
    .restart local v25    # "TAG_STRS":Ljava/lang/String;
    :cond_1a
    const-wide/16 v30, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v10    # "FORUM_DONE":Ljava/lang/Boolean;
    .restart local v11    # "FORUM_FAV":Ljava/lang/Long;
    .restart local v12    # "FORUM_REPLY":Ljava/lang/Long;
    .restart local v13    # "FORUM_SEL":Ljava/lang/Long;
    .restart local v14    # "FORUM_THREAD":Ljava/lang/Long;
    .restart local v15    # "GUAID":Ljava/lang/String;
    .restart local v21    # "MOBILE":Ljava/lang/String;
    :cond_1b
    const-wide/16 v30, 0x0

    goto :goto_2
.end method

.method protected a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a:Lcom/jiliguala/niuwa/logic/db/daometa/c;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a(Lcom/jiliguala/niuwa/logic/db/daometa/c;)V

    .line 238
    return-void
.end method

.method protected synthetic attachEntity(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/g;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/g;
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 249
    new-instance v2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    add-int/lit8 v3, p2, 0x0

    .line 250
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    .line 251
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, p2, 0x2

    .line 252
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, p2, 0x3

    .line 253
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, p2, 0x4

    .line 254
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, p2, 0x5

    .line 255
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v9, p2, 0x6

    .line 256
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v10, p2, 0x7

    .line 257
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v11, p2, 0x8

    .line 258
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_7
    add-int/lit8 v12, p2, 0x9

    .line 259
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    :goto_8
    add-int/lit8 v13, p2, 0xa

    .line 260
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    :goto_9
    add-int/lit8 v14, p2, 0xb

    .line 261
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v15, p2, 0xc

    .line 262
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    :goto_b
    add-int/lit8 v16, p2, 0xd

    .line 263
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    :goto_c
    add-int/lit8 v17, p2, 0xe

    .line 264
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    :goto_d
    add-int/lit8 v18, p2, 0xf

    .line 265
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    :goto_e
    add-int/lit8 v19, p2, 0x10

    .line 266
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    :goto_f
    add-int/lit8 v20, p2, 0x11

    .line 267
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    :goto_10
    add-int/lit8 v21, p2, 0x12

    .line 268
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    :goto_11
    add-int/lit8 v22, p2, 0x13

    .line 269
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    :goto_12
    add-int/lit8 v23, p2, 0x14

    .line 270
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    :goto_13
    add-int/lit8 v24, p2, 0x15

    .line 271
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    :goto_14
    add-int/lit8 v25, p2, 0x16

    .line 272
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    :goto_15
    add-int/lit8 v26, p2, 0x17

    .line 273
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    :goto_16
    add-int/lit8 v27, p2, 0x18

    .line 274
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    :goto_17
    add-int/lit8 v28, p2, 0x19

    .line 275
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    :goto_18
    invoke-direct/range {v2 .. v28}, Lcom/jiliguala/niuwa/logic/db/daometa/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v2, "entity":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    return-object v2

    .line 251
    .end local v2    # "entity":Lcom/jiliguala/niuwa/logic/db/daometa/g;
    :cond_0
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 252
    :cond_1
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 253
    :cond_2
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 254
    :cond_3
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 255
    :cond_4
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 256
    :cond_5
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 257
    :cond_6
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 258
    :cond_7
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getShort(I)S

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_19
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_7

    :cond_8
    const/4 v11, 0x0

    goto :goto_19

    .line 259
    :cond_9
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_8

    .line 260
    :cond_a
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_9

    .line 261
    :cond_b
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 262
    :cond_c
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_b

    .line 263
    :cond_d
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_c

    .line 264
    :cond_e
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_d

    .line 265
    :cond_f
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x1

    :goto_1a
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_e

    :cond_10
    const/16 v18, 0x0

    goto :goto_1a

    .line 266
    :cond_11
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_f

    .line 267
    :cond_12
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_10

    .line 268
    :cond_13
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    goto/16 :goto_11

    .line 269
    :cond_14
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    goto/16 :goto_12

    .line 270
    :cond_15
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto/16 :goto_13

    .line 271
    :cond_16
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    goto/16 :goto_14

    .line 272
    :cond_17
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v25

    if-eqz v25, :cond_18

    const/16 v25, 0x1

    :goto_1b
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    goto/16 :goto_15

    :cond_18
    const/16 v25, 0x0

    goto :goto_1b

    .line 273
    :cond_19
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_16

    .line 274
    :cond_1a
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_17

    .line 275
    :cond_1b
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_18
.end method

.method public b(Lcom/jiliguala/niuwa/logic/db/daometa/g;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/jiliguala/niuwa/logic/db/daometa/g;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/daometa/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/jiliguala/niuwa/logic/db/daometa/g;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->b(Lcom/jiliguala/niuwa/logic/db/daometa/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->b(Landroid/database/Cursor;I)Lcom/jiliguala/niuwa/logic/db/daometa/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Landroid/database/Cursor;Lcom/jiliguala/niuwa/logic/db/daometa/g;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    check-cast p1, Lcom/jiliguala/niuwa/logic/db/daometa/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;->a(Lcom/jiliguala/niuwa/logic/db/daometa/g;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
