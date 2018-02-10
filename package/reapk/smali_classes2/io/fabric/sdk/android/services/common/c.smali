.class Lio/fabric/sdk/android/services/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TwitterAdvertisingInfoPreferences"

.field private static final b:Ljava/lang/String; = "limit_ad_tracking_enabled"

.field private static final c:Ljava/lang/String; = "advertising_id"


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lio/fabric/sdk/android/services/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/c;->d:Landroid/content/Context;

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/c/e;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    .line 38
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/common/c;)Lio/fabric/sdk/android/services/common/b;
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/c;

    .prologue
    .line 28
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/c;->e()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/fabric/sdk/android/services/common/b;)V
    .locals 2
    .param p1, "advertisingInfo"    # Lio/fabric/sdk/android/services/common/b;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/fabric/sdk/android/services/common/c$1;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/c$1;-><init>(Lio/fabric/sdk/android/services/common/c;Lio/fabric/sdk/android/services/common/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/common/c;Lio/fabric/sdk/android/services/common/b;)V
    .locals 0
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/c;
    .param p1, "x1"    # Lio/fabric/sdk/android/services/common/b;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)V

    return-void
.end method

.method private b(Lio/fabric/sdk/android/services/common/b;)V
    .locals 4
    .param p1, "infoToReturn"    # Lio/fabric/sdk/android/services/common/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/c;->c(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/d;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lio/fabric/sdk/android/services/common/b;->a:Ljava/lang/String;

    .line 84
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lio/fabric/sdk/android/services/common/b;->b:Z

    .line 85
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/d;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/d;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    .line 90
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    .line 91
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/d;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method

.method private c(Lio/fabric/sdk/android/services/common/b;)Z
    .locals 1
    .param p1, "advertisingInfo"    # Lio/fabric/sdk/android/services/common/b;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/fabric/sdk/android/services/common/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lio/fabric/sdk/android/services/common/b;
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->c()Lio/fabric/sdk/android/services/common/f;

    move-result-object v0

    .line 118
    .local v0, "adInfoStrategy":Lio/fabric/sdk/android/services/common/f;
    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/f;->a()Lio/fabric/sdk/android/services/common/b;

    move-result-object v1

    .line 120
    .local v1, "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/c;->c(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->d()Lio/fabric/sdk/android/services/common/f;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/f;->a()Lio/fabric/sdk/android/services/common/b;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/c;->c(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "AdvertisingInfo not present"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v1

    .line 127
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/common/b;
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->b()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 51
    .local v0, "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/c;->c(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/c;->a(Lio/fabric/sdk/android/services/common/b;)V

    move-object v1, v0

    .line 59
    .end local v0    # "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    .local v1, "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    :goto_0
    return-object v1

    .line 57
    .end local v1    # "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    .restart local v0    # "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    :cond_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/c;->e()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)V

    move-object v1, v0

    .line 59
    .end local v0    # "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    .restart local v1    # "infoToReturn":Lio/fabric/sdk/android/services/common/b;
    goto :goto_0
.end method

.method protected b()Lio/fabric/sdk/android/services/common/b;
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/c/d;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "advertising_id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "advertisingId":Ljava/lang/String;
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/c;->e:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/c/d;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "limit_ad_tracking_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    .local v1, "limitAd":Z
    new-instance v2, Lio/fabric/sdk/android/services/common/b;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/common/b;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public c()Lio/fabric/sdk/android/services/common/f;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lio/fabric/sdk/android/services/common/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()Lio/fabric/sdk/android/services/common/f;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lio/fabric/sdk/android/services/common/e;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
