.class public Lcom/jiliguala/niuwa/common/util/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/a/b/i$a;


# static fields
.field private static e:Lcom/jiliguala/niuwa/common/util/ae;


# instance fields
.field public a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private f:Lcom/jiliguala/niuwa/a/b/i;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lcom/jiliguala/niuwa/common/util/ae;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/jiliguala/niuwa/common/util/ae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/ae;->e:Lcom/jiliguala/niuwa/common/util/ae;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/common/util/ae;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/ae;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/ae;->e:Lcom/jiliguala/niuwa/common/util/ae;

    .line 45
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/ae;->e:Lcom/jiliguala/niuwa/common/util/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "WeChat Gift Dialog"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/a/b/i;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/a/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/a/b/i;->b(Z)V

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/i;->a(Lcom/jiliguala/niuwa/a/b/i$a;)V

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/i;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/i;->b(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/i;->c(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/i;->a()V

    .line 59
    const-string v0, "PREFS_KEY_HAS_WECHAT_SUBSCRIBE_DIALOG_SHOW"

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "templeteid"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/ae;->b:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "templeteid"    # Ljava/lang/String;
    .param p2, "sceneid"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 80
    :cond_0
    new-instance v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;-><init>()V

    .line 81
    .local v0, "req":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->scene:I

    .line 82
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->templateID:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->d:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 85
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "WeChat Gift Dialog Click"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/i;->b()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "\u60a8\u8fd8\u6ca1\u5b89\u88c5\u5fae\u4fe1\uff0c\u5b89\u88c5\u540e\u624d\u80fd\u9886\u53d6\uff01"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneid"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    .line 97
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->b:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/ae;->f:Lcom/jiliguala/niuwa/a/b/i;

    .line 100
    return-void
.end method
