.class public Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao;
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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 30
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "BABY_ID"

    const-string v5, "BABY__ID"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->a:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "BABY_NICK"

    const-string v8, "BABY__NICK"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->b:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "BABY_BD"

    const-string v7, "BABY__BD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->c:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "BABY_PRT"

    const-string v7, "BABY__PRT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->d:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "BABY_AVA"

    const-string v7, "BABY__AVA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->e:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "BABY_GENDER"

    const-string v7, "BABY__GENDER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->f:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "BABY_USER_ID"

    const-string v7, "BABY__USER__ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/jiliguala/niuwa/logic/db/daometa/BabyInfoDao$Properties;->g:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
