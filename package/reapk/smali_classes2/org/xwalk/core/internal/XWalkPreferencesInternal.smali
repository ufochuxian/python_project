.class public Lorg/xwalk/core/internal/XWalkPreferencesInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;,
        Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    noInstance = true
.end annotation


# static fields
.field public static final ALLOW_UNIVERSAL_ACCESS_FROM_FILE:Ljava/lang/String; = "allow-universal-access-from-file"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final ANIMATABLE_XWALK_VIEW:Ljava/lang/String; = "animatable-xwalk-view"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final ENABLE_EXTENSIONS:Ljava/lang/String; = "enable-extensions"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final ENABLE_JAVASCRIPT:Ljava/lang/String; = "enable-javascript"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final ENABLE_THEME_COLOR:Ljava/lang/String; = "enable-theme-color"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final JAVASCRIPT_CAN_OPEN_WINDOW:Ljava/lang/String; = "javascript-can-open-window"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final PROFILE_NAME:Ljava/lang/String; = "profile-name"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final REMOTE_DEBUGGING:Ljava/lang/String; = "remote-debugging"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final SPATIAL_NAVIGATION:Ljava/lang/String; = "enable-spatial-navigation"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final SUPPORT_MULTIPLE_WINDOWS:Ljava/lang/String; = "support-multiple-windows"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XWalkPreferences"

.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private static sRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 177
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "remote-debugging"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "animatable-xwalk-view"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "enable-javascript"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "javascript-can-open-window"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "allow-universal-access-from-file"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "support-multiple-windows"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "enable-extensions"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "profile-name"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    const-string v3, "Default"

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "enable-spatial-navigation"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    const-string v1, "enable-theme-color"

    new-instance v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method private static checkKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->removeEnqueuedReference()V

    .line 353
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: the preference key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported by Crosswalk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return-void
.end method

.method public static declared-synchronized getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 279
    const-class v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 292
    const-class v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getIntegerValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 305
    const-class v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 306
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getStringValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 266
    const-class v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized load(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    .locals 5
    .param p0, "listener"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;

    .prologue
    .line 311
    const-class v4, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-interface {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;->onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 315
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->registerListener(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    monitor-exit v4

    return-void
.end method

.method private static onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    .prologue
    .line 345
    sget-object v3, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 346
    .local v2, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;

    .line 347
    .local v1, "listener":Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;
    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;->onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V

    goto :goto_0

    .line 349
    .end local v1    # "listener":Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;
    .end local v2    # "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    :cond_1
    return-void
.end method

.method private static declared-synchronized registerListener(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    .locals 3
    .param p0, "listener"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;

    .prologue
    .line 328
    const-class v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->removeEnqueuedReference()V

    .line 329
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 331
    .local v0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit v2

    return-void

    .line 328
    .end local v0    # "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static removeEnqueuedReference()V
    .locals 2

    .prologue
    .line 366
    .local v0, "toRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    :goto_0
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0    # "toRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0    # "toRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    if-eqz v0, :cond_0

    .line 367
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method public static declared-synchronized setValue(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 221
    const-class v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 224
    const-string v1, "animatable-xwalk-view"

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v1, "XWalkPreferences"

    const-string v3, "ANIMATABLE_XWALK_VIEW is not effective to existing XWalkView objects"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getIntegerValue()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 228
    new-instance v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(I)V

    .line 229
    .local v0, "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {p0, v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v0    # "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    :cond_1
    monitor-exit v2

    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 243
    const-class v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 246
    const-string v1, "animatable-xwalk-view"

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const-string v1, "XWalkPreferences"

    const-string v3, "ANIMATABLE_XWALK_VIEW is not effective to existing XWalkView objects"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    new-instance v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p0, v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    :cond_1
    monitor-exit v2

    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setValue(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 199
    const-class v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->checkKey(Ljava/lang/String;)V

    .line 202
    const-string v1, "animatable-xwalk-view"

    if-ne p0, v1, :cond_0

    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const-string v1, "XWalkPreferences"

    const-string v3, "ANIMATABLE_XWALK_VIEW is not effective to existing XWalkView objects"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 206
    new-instance v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    invoke-direct {v0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;-><init>(Z)V

    .line 207
    .local v0, "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    sget-object v1, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p0, v0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "v":Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;
    :cond_1
    monitor-exit v2

    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized unload(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;

    .prologue
    .line 319
    const-class v0, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->unregisterListener(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit v0

    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized unregisterListener(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V
    .locals 4
    .param p0, "listener"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;

    .prologue
    .line 335
    const-class v3, Lorg/xwalk/core/internal/XWalkPreferencesInternal;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->removeEnqueuedReference()V

    .line 336
    sget-object v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 337
    .local v1, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 338
    sget-object v2, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v1    # "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;>;"
    :cond_1
    monitor-exit v3

    return-void

    .line 335
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
