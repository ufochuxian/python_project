.class public Lio/fabric/sdk/android/services/common/IdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.crashlytics.CollectDeviceIdentifiers"

.field public static final b:Ljava/lang/String; = "com.crashlytics.CollectUserIdentifiers"

.field public static final c:Ljava/lang/String; = "0.0"

.field private static final g:Ljava/lang/String; = "crashlytics.installation.id"

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/lang/String; = "9774d56d682e549c"

.field private static final j:Ljava/lang/String;


# instance fields
.field d:Lio/fabric/sdk/android/services/common/c;

.field e:Lio/fabric/sdk/android/services/common/b;

.field f:Z

.field private final k:Ljava/util/concurrent/locks/ReentrantLock;

.field private final l:Lio/fabric/sdk/android/services/common/n;

.field private final m:Z

.field private final n:Z

.field private final o:Landroid/content/Context;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/IdManager;->h:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/IdManager;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "appInstallIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "kits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/i;>;"
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->k:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p2, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    if-nez p4, :cond_2

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "kits must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/IdManager;->o:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/IdManager;->p:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lio/fabric/sdk/android/services/common/IdManager;->q:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lio/fabric/sdk/android/services/common/IdManager;->r:Ljava/util/Collection;

    .line 112
    new-instance v0, Lio/fabric/sdk/android/services/common/n;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/n;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->l:Lio/fabric/sdk/android/services/common/n;

    .line 113
    new-instance v0, Lio/fabric/sdk/android/services/common/c;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/common/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->d:Lio/fabric/sdk/android/services/common/c;

    .line 115
    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    invoke-static {p1, v0, v4}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    .line 117
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    if-nez v0, :cond_3

    .line 118
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, v0, v4}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->n:Z

    .line 124
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->n:Z

    if-nez v0, :cond_4

    .line 125
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User information collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 247
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    :try_start_0
    const-string v1, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "uuid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/IdManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashlytics.installation.id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 256
    return-object v0

    .line 258
    .end local v0    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/IdManager;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V
    .locals 0
    .param p2, "idKey"    # Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .param p3, "idValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "idMap":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 336
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lio/fabric/sdk/android/services/common/IdManager;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->n:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->q:Ljava/lang/String;

    .line 161
    .local v0, "appInstallId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 162
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->o:Landroid/content/Context;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "crashlytics.installation.id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/IdManager;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 208
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v4}, Lio/fabric/sdk/android/services/common/IdManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 209
    invoke-direct {p0, v4}, Lio/fabric/sdk/android/services/common/IdManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 208
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const-string v1, ""

    .line 225
    .local v1, "toReturn":Ljava/lang/String;
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->n()Ljava/lang/String;

    move-result-object v1

    .line 228
    if-nez v1, :cond_0

    .line 229
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->o:Landroid/content/Context;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "crashlytics.installation.id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public i()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v2, "ids":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/IdManager;->r:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/i;

    .line 279
    .local v3, "kit":Lio/fabric/sdk/android/i;
    instance-of v5, v3, Lio/fabric/sdk/android/services/common/l;

    if-eqz v5, :cond_0

    move-object v1, v3

    .line 280
    check-cast v1, Lio/fabric/sdk/android/services/common/l;

    .line 281
    .local v1, "idProvider":Lio/fabric/sdk/android/services/common/l;
    invoke-interface {v1}, Lio/fabric/sdk/android/services/common/l;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v4

    .line 283
    .local v4, "kitIds":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lio/fabric/sdk/android/services/common/IdManager;->a(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    .end local v1    # "idProvider":Lio/fabric/sdk/android/services/common/l;
    .end local v3    # "kit":Lio/fabric/sdk/android/i;
    .end local v4    # "kitIds":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    :cond_1
    sget-object v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->n()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lio/fabric/sdk/android/services/common/IdManager;->a(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    .line 290
    sget-object v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->m()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lio/fabric/sdk/android/services/common/IdManager;->a(Ljava/util/Map;Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)V

    .line 292
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->l:Lio/fabric/sdk/android/services/common/n;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/IdManager;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized k()Lio/fabric/sdk/android/services/common/b;
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->f:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->d:Lio/fabric/sdk/android/services/common/c;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/c;->a()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->e:Lio/fabric/sdk/android/services/common/b;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->f:Z

    .line 304
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/IdManager;->e:Lio/fabric/sdk/android/services/common/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, "toReturn":Ljava/lang/Boolean;
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->k()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 312
    .local v0, "advertisingInfo":Lio/fabric/sdk/android/services/common/b;
    if-eqz v0, :cond_0

    .line 313
    iget-boolean v2, v0, Lio/fabric/sdk/android/services/common/b;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 317
    .end local v0    # "advertisingInfo":Lio/fabric/sdk/android/services/common/b;
    :cond_0
    return-object v1
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "toReturn":Ljava/lang/String;
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/IdManager;->k()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 325
    .local v0, "advertisingInfo":Lio/fabric/sdk/android/services/common/b;
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, v0, Lio/fabric/sdk/android/services/common/b;->a:Ljava/lang/String;

    .line 330
    .end local v0    # "advertisingInfo":Lio/fabric/sdk/android/services/common/b;
    :cond_0
    return-object v1
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "toReturn":Ljava/lang/String;
    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->m:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/IdManager;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "androidId":Ljava/lang/String;
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/IdManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method
