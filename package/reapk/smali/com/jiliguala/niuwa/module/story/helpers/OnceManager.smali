.class public Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TESTING:Z


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mStore:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->TESTING:Z

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 34
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method

.method private static makeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "onceId"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RO."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/helpers/StringHashingHelper;->sha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnTrueOnce(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "onceId"    # Ljava/lang/String;
    .param p2, "firstSessionOnly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->TESTING:Z

    if-nez v2, :cond_0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "runOnce should only be called on the main thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->makeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "preferenceKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public countOnces()I
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "count":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "key":Ljava/lang/String;
    const-string v3, "RO."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public peekOnce(Ljava/lang/String;)Z
    .locals 3
    .param p1, "onceId"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->TESTING:Z

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "peekOnce should only be called on the main thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->makeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "preferenceKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetOnces()V
    .locals 5

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "keysToReset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "key":Ljava/lang/String;
    const-string v4, "RO."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .restart local v1    # "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 58
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public returnTrueOnce(Ljava/lang/String;)Z
    .locals 1
    .param p1, "onceId"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->returnTrueOnce(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public returnTrueOnceOnFirstLaunchOnly(Ljava/lang/String;)Z
    .locals 1
    .param p1, "onceId"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->returnTrueOnce(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public runOnce(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onceId"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->returnTrueOnce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 136
    :cond_0
    return-void
.end method

.method public runOnceOnFirstLaunchOnly(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onceId"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->returnTrueOnce(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_0
    return-void
.end method
