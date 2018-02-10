.class public Lorg/xwalk/core/XWalkViewDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

.field private static coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private static hasFormDataMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "hasFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkViewDatabase;->hasFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 64
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "clearFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkViewDatabase;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFormData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {}, Lorg/xwalk/core/XWalkViewDatabase;->reflectionInit()V

    .line 52
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    return-void

    .line 53
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 55
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public static hasFormData()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-static {}, Lorg/xwalk/core/XWalkViewDatabase;->reflectionInit()V

    .line 30
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->hasFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    return v1

    .line 31
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0    # "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 38
    goto :goto_0
.end method

.method static reflectionInit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 68
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-eqz v1, :cond_0

    .line 82
    .local v0, "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 70
    .end local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 72
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 73
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_1

    .line 74
    const-class v1, Lorg/xwalk/core/XWalkViewDatabase;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectClass(Ljava/lang/Class;)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkViewDatabaseBridge"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .restart local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->hasFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 81
    sget-object v1, Lorg/xwalk/core/XWalkViewDatabase;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
