.class Lio/fabric/sdk/android/services/settings/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/s;


# static fields
.field private static final a:Ljava/lang/String; = "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

.field private static final b:Ljava/lang/String; = "existing_instance_identifier"


# instance fields
.field private final c:Lio/fabric/sdk/android/services/settings/w;

.field private final d:Lio/fabric/sdk/android/services/settings/v;

.field private final e:Lio/fabric/sdk/android/services/common/k;

.field private final f:Lio/fabric/sdk/android/services/settings/h;

.field private final g:Lio/fabric/sdk/android/services/settings/x;

.field private final h:Lio/fabric/sdk/android/i;

.field private final i:Lio/fabric/sdk/android/services/c/d;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Lio/fabric/sdk/android/services/settings/w;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/settings/v;Lio/fabric/sdk/android/services/settings/h;Lio/fabric/sdk/android/services/settings/x;)V
    .locals 2
    .param p1, "kit"    # Lio/fabric/sdk/android/i;
    .param p2, "settingsRequest"    # Lio/fabric/sdk/android/services/settings/w;
    .param p3, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/k;
    .param p4, "settingsJsonTransform"    # Lio/fabric/sdk/android/services/settings/v;
    .param p5, "cachedSettingsIo"    # Lio/fabric/sdk/android/services/settings/h;
    .param p6, "settingsSpiCall"    # Lio/fabric/sdk/android/services/settings/x;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/k;->h:Lio/fabric/sdk/android/i;

    .line 55
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/k;->c:Lio/fabric/sdk/android/services/settings/w;

    .line 56
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/k;->e:Lio/fabric/sdk/android/services/common/k;

    .line 57
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/k;->d:Lio/fabric/sdk/android/services/settings/v;

    .line 58
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/k;->f:Lio/fabric/sdk/android/services/settings/h;

    .line 59
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/k;->g:Lio/fabric/sdk/android/services/settings/x;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/services/c/e;

    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/k;->h:Lio/fabric/sdk/android/i;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/c/e;-><init>(Lio/fabric/sdk/android/i;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/k;->i:Lio/fabric/sdk/android/services/c/d;

    .line 61
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/t;
    .locals 10
    .param p1, "cacheBehavior"    # Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    .prologue
    .line 105
    const/4 v5, 0x0

    .line 108
    .local v5, "toReturn":Lio/fabric/sdk/android/services/settings/t;
    :try_start_0
    sget-object v6, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v6, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    iget-object v6, p0, Lio/fabric/sdk/android/services/settings/k;->f:Lio/fabric/sdk/android/services/settings/h;

    invoke-interface {v6}, Lio/fabric/sdk/android/services/settings/h;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 111
    .local v4, "settingsJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 112
    iget-object v6, p0, Lio/fabric/sdk/android/services/settings/k;->d:Lio/fabric/sdk/android/services/settings/v;

    iget-object v7, p0, Lio/fabric/sdk/android/services/settings/k;->e:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/services/settings/v;->a(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/t;

    move-result-object v3

    .line 115
    .local v3, "settingsData":Lio/fabric/sdk/android/services/settings/t;
    if-eqz v3, :cond_3

    .line 116
    const-string v6, "Loaded cached settings: "

    invoke-direct {p0, v4, v6}, Lio/fabric/sdk/android/services/settings/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lio/fabric/sdk/android/services/settings/k;->e:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v6}, Lio/fabric/sdk/android/services/common/k;->a()J

    move-result-wide v0

    .line 120
    .local v0, "currentTimeMillis":J
    sget-object v6, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {v6, p1}, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    invoke-virtual {v3, v0, v1}, Lio/fabric/sdk/android/services/settings/t;->a(J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 122
    :cond_0
    move-object v5, v3

    .line 123
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Returning cached settings."

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "currentTimeMillis":J
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/t;
    .end local v4    # "settingsJson":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v5

    .line 125
    .restart local v0    # "currentTimeMillis":J
    .restart local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/t;
    .restart local v4    # "settingsJson":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Cached settings have expired."

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "currentTimeMillis":J
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/t;
    .end local v4    # "settingsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Failed to get cached settings"

    invoke-interface {v6, v7, v8, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/t;
    .restart local v4    # "settingsJson":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Failed to transform cached settings data."

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/t;
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "No cached settings data found."

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/settings/t;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->USE_CACHE:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/settings/k;->a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/t;
    .locals 6
    .param p1, "cacheBehavior"    # Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 75
    .local v2, "toReturn":Lio/fabric/sdk/android/services/settings/t;
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/d;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/k;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/k;->b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/t;

    move-result-object v2

    .line 79
    :cond_0
    if-nez v2, :cond_1

    .line 80
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/k;->g:Lio/fabric/sdk/android/services/settings/x;

    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/k;->c:Lio/fabric/sdk/android/services/settings/w;

    invoke-interface {v3, v4}, Lio/fabric/sdk/android/services/settings/x;->a(Lio/fabric/sdk/android/services/settings/w;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, "settingsJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 83
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/k;->d:Lio/fabric/sdk/android/services/settings/v;

    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/k;->e:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v3, v4, v1}, Lio/fabric/sdk/android/services/settings/v;->a(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/t;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/k;->f:Lio/fabric/sdk/android/services/settings/h;

    iget-wide v4, v2, Lio/fabric/sdk/android/services/settings/t;->g:J

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/services/settings/h;->a(JLorg/json/JSONObject;)V

    .line 86
    const-string v3, "Loaded settings: "

    invoke-direct {p0, v1, v3}, Lio/fabric/sdk/android/services/settings/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/fabric/sdk/android/services/settings/k;->a(Ljava/lang/String;)Z

    .line 94
    .end local v1    # "settingsJson":Lorg/json/JSONObject;
    :cond_1
    if-nez v2, :cond_2

    .line 95
    sget-object v3, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-direct {p0, v3}, Lio/fabric/sdk/android/services/settings/k;->b(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    :cond_2
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "buildInstanceIdentifier"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/k;->i:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/d;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/k;->i:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/c/d;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    return v1
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/k;->h:Lio/fabric/sdk/android/i;

    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/k;->i:Lio/fabric/sdk/android/services/c/d;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/k;->c()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "existingInstanceIdentifier":Ljava/lang/String;
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "currentInstanceIdentifier":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
