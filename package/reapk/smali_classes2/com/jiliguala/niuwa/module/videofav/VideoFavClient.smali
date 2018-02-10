.class public Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;


# instance fields
.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method private generateBody(Ljava/util/List;)Lokhttp3/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "fav":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/VideoFavReportTemp;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/VideoFavReportTemp;-><init>()V

    .line 112
    .local v2, "videoFavReportTemp":Lcom/jiliguala/niuwa/logic/network/json/VideoFavReportTemp;
    iput-object p1, v2, Lcom/jiliguala/niuwa/logic/network/json/VideoFavReportTemp;->fav:Ljava/util/List;

    .line 113
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 116
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mInstance:Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    return-object v0
.end method

.method private getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mSubscriptions:Lrx/i/b;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method private reportFavDataToServer()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->selectVideoFavData()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "fav":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/VideoFavInfoTemp;>;"
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->generateBody(Ljava/util/List;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->s(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 87
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 88
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 89
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient$1;-><init>(Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;)V

    .line 90
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method


# virtual methods
.method public checkReportVideoFavToServer()V
    .locals 5

    .prologue
    .line 58
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "LAST_REPORT_SERVER_FAV_TIME"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "lastReportServerFavTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "LAST_REPORT_SERVER_FAV_TIME"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 64
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v0    # "lastReportServerFavTime":Ljava/lang/String;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0    # "lastReportServerFavTime":Ljava/lang/String;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 68
    .local v1, "lastReportSeverDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/f;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "LAST_REPORT_SERVER_FAV_TIME"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 71
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->reportFavDataToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "lastReportServerFavTime":Ljava/lang/String;
    .end local v1    # "lastReportSeverDate":Ljava/util/Date;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public removePrefKeyVideoFav()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "LAST_REPORT_SERVER_FAV_TIME"

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public reportServerAndClearDataAfterLoginOut()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->reportFavDataToServer()V

    .line 125
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->clearData()V

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->removePrefKeyVideoFav()V

    .line 127
    return-void
.end method
