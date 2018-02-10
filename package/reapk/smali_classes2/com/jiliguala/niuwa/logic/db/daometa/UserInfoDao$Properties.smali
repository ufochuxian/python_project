.class public Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final a:Lde/greenrobot/dao/Property;

.field public static final b:Lde/greenrobot/dao/Property;

.field public static final c:Lde/greenrobot/dao/Property;

.field public static final d:Lde/greenrobot/dao/Property;

.field public static final e:Lde/greenrobot/dao/Property;

.field public static final f:Lde/greenrobot/dao/Property;

.field public static final g:Lde/greenrobot/dao/Property;

.field public static final h:Lde/greenrobot/dao/Property;

.field public static final i:Lde/greenrobot/dao/Property;

.field public static final j:Lde/greenrobot/dao/Property;

.field public static final k:Lde/greenrobot/dao/Property;

.field public static final l:Lde/greenrobot/dao/Property;

.field public static final m:Lde/greenrobot/dao/Property;

.field public static final n:Lde/greenrobot/dao/Property;

.field public static final o:Lde/greenrobot/dao/Property;

.field public static final p:Lde/greenrobot/dao/Property;

.field public static final q:Lde/greenrobot/dao/Property;

.field public static final r:Lde/greenrobot/dao/Property;

.field public static final s:Lde/greenrobot/dao/Property;

.field public static final t:Lde/greenrobot/dao/Property;

.field public static final u:Lde/greenrobot/dao/Property;

.field public static final v:Lde/greenrobot/dao/Property;

.field public static final w:Lde/greenrobot/dao/Property;

.field public static final x:Lde/greenrobot/dao/Property;

.field public static final y:Lde/greenrobot/dao/Property;

.field public static final z:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "UID"

    const-string v5, "UID"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->a:Lde/greenrobot/dao/Property;

    .line 25
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "NICK"

    const-string v8, "NICK"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->b:Lde/greenrobot/dao/Property;

    .line 26
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "ACCESS_TOKEN"

    const-string v7, "ACCESS__TOKEN"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->c:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "J_TOKEN"

    const-string v7, "J__TOKEN"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->d:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "AVA"

    const-string v7, "AVA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->e:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "TYP"

    const-string v7, "TYP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->f:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "TTS"

    const-string v7, "TTS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->g:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "U"

    const-string v7, "U"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->h:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IS_NEW"

    const-string v7, "IS__NEW"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->i:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "SEGP"

    const-string v7, "SEGP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->j:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "SEGTYPE"

    const-string v7, "SEGTYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->k:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "CITY"

    const-string v7, "CITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->l:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "DESC"

    const-string v7, "DESC"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->m:Lde/greenrobot/dao/Property;

    .line 37
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "BG"

    const-string v7, "BG"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->n:Lde/greenrobot/dao/Property;

    .line 38
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "TAG_STRS"

    const-string v7, "TAG__STRS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->o:Lde/greenrobot/dao/Property;

    .line 39
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "KEY_GRPTASK"

    const-string v7, "KEY__GRPTASK"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->p:Lde/greenrobot/dao/Property;

    .line 40
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "GUAID"

    const-string v7, "GUAID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->q:Lde/greenrobot/dao/Property;

    .line 41
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "MOBILE"

    const-string v7, "MOBILE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->r:Lde/greenrobot/dao/Property;

    .line 42
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/Long;

    const-string v5, "FORUM_THREAD"

    const-string v7, "FORUM__THREAD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->s:Lde/greenrobot/dao/Property;

    .line 43
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/Long;

    const-string v5, "FORUM_REPLY"

    const-string v7, "FORUM__REPLY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->t:Lde/greenrobot/dao/Property;

    .line 44
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/Long;

    const-string v5, "FORUM_SEL"

    const-string v7, "FORUM__SEL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->u:Lde/greenrobot/dao/Property;

    .line 45
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Long;

    const-string v5, "FORUM_FAV"

    const-string v7, "FORUM__FAV"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->v:Lde/greenrobot/dao/Property;

    .line 46
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "FORUM_DONE"

    const-string v7, "FORUM__DONE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->w:Lde/greenrobot/dao/Property;

    .line 47
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/String;

    const-string v5, "CTS"

    const-string v7, "CTS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->x:Lde/greenrobot/dao/Property;

    .line 48
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "MEMBER_SHIP_STATUS"

    const-string v7, "MEMBER__SHIP__STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->y:Lde/greenrobot/dao/Property;

    .line 49
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "MEMBER_SHIP_DUETS"

    const-string v7, "MEMBER__SHIP__DUETS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/UserInfoDao$Properties;->z:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
