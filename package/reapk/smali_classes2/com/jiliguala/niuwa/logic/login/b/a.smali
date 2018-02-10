.class public Lcom/jiliguala/niuwa/logic/login/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/jiliguala/niuwa/logic/login/b/a;


# instance fields
.field private c:Lcn/sharesdk/framework/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/logic/login/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/b/a;->a:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/b/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/b/a;->b:Lcom/jiliguala/niuwa/logic/login/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static final a()Lcom/jiliguala/niuwa/logic/login/b/a;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/jiliguala/niuwa/logic/login/b/a;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/b/a;->b:Lcom/jiliguala/niuwa/logic/login/b/a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/b/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/b/a;->b:Lcom/jiliguala/niuwa/logic/login/b/a;

    .line 77
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/b/a;->b:Lcom/jiliguala/niuwa/logic/login/b/a;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcn/sharesdk/framework/Platform;)V
    .locals 1
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    .line 99
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/b/a;->a(Lcn/sharesdk/framework/Platform;)V

    .line 103
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1002

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "stringObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "access_token":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/b/a;->c:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "open_id":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v4, 0x1040

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v2

    const-string v3, "qq"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V

    .line 119
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1002

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
