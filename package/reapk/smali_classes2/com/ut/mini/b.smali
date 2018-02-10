.class public Lcom/ut/mini/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ut/mini/b;


# instance fields
.field private b:Lcom/ut/mini/h;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/b;->a:Lcom/ut/mini/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/b;->c:Ljava/util/Map;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 74
    new-instance v0, Lcom/ut/mini/e/a;

    invoke-direct {v0}, Lcom/ut/mini/e/a;-><init>()V

    .line 75
    invoke-static {}, Lcom/ut/mini/d/e;->a()Lcom/ut/mini/d/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ut/mini/d/e;->a(Lcom/ut/mini/d/b;Z)V

    .line 76
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/a/a;->a(Lcom/ut/mini/e/a;)V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/ut/mini/e/a;

    invoke-direct {v0}, Lcom/ut/mini/e/a;-><init>()V

    .line 79
    invoke-static {v0}, Lcom/ut/mini/b/a/d;->a(Lcom/ut/mini/b/a/b;)V

    .line 80
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/a/a;->a(Lcom/ut/mini/e/a;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/ut/mini/b;
    .locals 2

    .prologue
    .line 153
    const-class v1, Lcom/ut/mini/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/b;->a:Lcom/ut/mini/b;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/ut/mini/b;

    invoke-direct {v0}, Lcom/ut/mini/b;-><init>()V

    sput-object v0, Lcom/ut/mini/b;->a:Lcom/ut/mini/b;

    .line 156
    :cond_0
    sget-object v0, Lcom/ut/mini/b;->a:Lcom/ut/mini/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    :try_start_0
    const-string v1, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 6
    .param p1, "aApplicationInstance"    # Landroid/app/Application;

    .prologue
    .line 110
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->a(Landroid/app/Application;)V

    .line 112
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->a(Landroid/app/Application;)V

    .line 113
    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.alibaba.apmplus.app_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.alibaba.apmplus.app_secret"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.alibaba.apmplus.authcode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.alibaba.apmplus.channel"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/ut/mini/b;->e()Z

    move-result v4

    invoke-static {v4, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->a(Landroid/content/Context;)V

    .line 91
    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/ut/mini/c/b;->a()Lcom/ut/mini/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/c/b;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method public a(Lcom/ut/mini/b/b/a;)V
    .locals 4
    .param p1, "aRequestAuthenticationInstance"    # Lcom/ut/mini/b/b/a;

    .prologue
    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string v0, "setRequestAuthentication"

    const-string v1, "Fatal Error,pRequestAuth must not be null."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    :cond_0
    instance-of v0, p1, Lcom/ut/mini/b/b/b;

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/ut/mini/b/b/a;->a()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/ut/mini/b/b/b;

    .end local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/b/b/a;
    invoke-virtual {p1}, Lcom/ut/mini/b/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    .restart local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/b/b/a;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/ut/mini/b/b/a;->a()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/ut/mini/b/b/c;

    .end local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/b/b/a;
    invoke-virtual {p1}, Lcom/ut/mini/b/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/mtl/appmonitor/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->a(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/log/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c;->d()Ljava/util/Map;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 291
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c;->a(Ljava/util/Map;)V

    .line 293
    return-void
.end method

.method public declared-synchronized b()Lcom/ut/mini/h;
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/b;->b:Lcom/ut/mini/h;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/ut/mini/h;

    invoke-direct {v0}, Lcom/ut/mini/h;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/ut/mini/b;->b:Lcom/ut/mini/h;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/b;->b:Lcom/ut/mini/h;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "getDefaultTracker error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/b;->b:Lcom/ut/mini/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/ut/mini/h;
    .locals 2
    .param p1, "aTrackId"    # Ljava/lang/String;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/ut/mini/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ut/mini/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-object v0

    .line 208
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/h;

    invoke-direct {v0}, Lcom/ut/mini/h;-><init>()V

    .line 209
    invoke-virtual {v0, p1}, Lcom/ut/mini/h;->a(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/ut/mini/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_1
    :try_start_2
    const-string v0, "getTracker"

    const-string v1, "TrackId is null."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->c()V

    .line 247
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "aChannel"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/g;->c()V

    .line 300
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 8
    .param p1, "aUsernick"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/ut/mini/b;->b()Lcom/ut/mini/h;

    move-result-object v7

    .line 267
    if-eqz v7, :cond_0

    .line 268
    new-instance v0, Lcom/ut/mini/c/a;

    const-string v1, "UT"

    const/16 v2, 0x3ee

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-virtual {v0}, Lcom/ut/mini/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ut/mini/h;->a(Ljava/util/Map;)V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, "Record userRegister event error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_1
    const-string v0, "userRegister"

    const-string v1, "Fatal Error,usernick can not be null or empty!"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
