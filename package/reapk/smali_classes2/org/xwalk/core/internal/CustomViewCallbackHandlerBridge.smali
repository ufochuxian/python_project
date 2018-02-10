.class public Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;
.super Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private internal:Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

.field private onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;)V
    .locals 4
    .param p1, "internal"    # Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;-><init>()V

    .line 40
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    const-string v2, "onCustomViewHidden"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 19
    iput-object p1, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->internal:Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

    .line 20
    invoke-virtual {p0}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->reflectionInit()V

    .line 21
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onCustomViewHidden()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenSuper()V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCustomViewHiddenSuper()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->internal:Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

    if-nez v0, :cond_0

    .line 34
    invoke-super {p0}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;->onCustomViewHidden()V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->internal:Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;->onCustomViewHidden()V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 45
    iget-object v2, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "CustomViewCallbackHandler"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 50
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v2, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->onCustomViewHiddenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/CustomViewCallbackHandlerBridge;->wrapper:Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onCustomViewHidden"

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
