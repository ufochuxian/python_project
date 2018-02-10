.class public Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper; = null

.field private static final MAX_FAIL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static video_all_fall_back_redirect_fail_reported:Z

.field private static video_redirect_fail_reported:Z


# instance fields
.field private allFailId:Ljava/lang/String;

.field private allFallbackFailCounter:I

.field private firstFailCounter:I

.field private preferFailId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-class v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->TAG:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_redirect_fail_reported:Z

    .line 18
    sput-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_all_fall_back_redirect_fail_reported:Z

    .line 19
    new-instance v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFallbackFailCounter:I

    .line 21
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->firstFailCounter:I

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    .line 33
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->INSTANCE:Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    return-object v0
.end method


# virtual methods
.method public increaseAllFailCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFailId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFailId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFallbackFailCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFallbackFailCounter:I

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFailId:Ljava/lang/String;

    .line 44
    :cond_1
    return-void
.end method

.method public increaseFirstFailCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->preferFailId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->preferFailId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->firstFailCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->firstFailCounter:I

    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->preferFailId:Ljava/lang/String;

    .line 53
    :cond_1
    return-void
.end method

.method public reportFallBackLinkRedirectFail(Ljava/lang/String;I)V
    .locals 3
    .param p1, "resid"    # Ljava/lang/String;
    .param p2, "rspCode"    # I

    .prologue
    .line 83
    sget-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_all_fall_back_redirect_fail_reported:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFallbackFailCounter:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 84
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_all_fall_back_redirect_fail_reported:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "rspCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Video Fail"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public reportPreferedLinkRedirectFail(Ljava/lang/String;I)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rspCode"    # I

    .prologue
    .line 68
    sget-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_redirect_fail_reported:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->firstFailCounter:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->video_redirect_fail_reported:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "rspCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Redirect Fail"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public resetAllFailCounter()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->allFallbackFailCounter:I

    .line 63
    return-void
.end method

.method public resetFirstFailCounter()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->firstFailCounter:I

    .line 58
    return-void
.end method
