.class public Lorg/xwalk/core/XWalkCookieManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private acceptCookieMethod:Lorg/xwalk/core/ReflectMethod;

.field private allowFileSchemeCookiesMethod:Lorg/xwalk/core/ReflectMethod;

.field private bridge:Ljava/lang/Object;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private flushCookieStoreMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCookieStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private hasCookiesMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private removeAllCookieMethod:Lorg/xwalk/core/ReflectMethod;

.field private removeExpiredCookieMethod:Lorg/xwalk/core/ReflectMethod;

.field private removeSessionCookieMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAcceptCookiebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setCookieStringStringMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkCookieManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAcceptCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 73
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "acceptCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->acceptCookieMethod:Lorg/xwalk/core/ReflectMethod;

    .line 96
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->setCookieStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->getCookieStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 137
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "removeSessionCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->removeSessionCookieMethod:Lorg/xwalk/core/ReflectMethod;

    .line 156
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "removeAllCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->removeAllCookieMethod:Lorg/xwalk/core/ReflectMethod;

    .line 176
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "hasCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->hasCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 195
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "removeExpiredCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->removeExpiredCookieMethod:Lorg/xwalk/core/ReflectMethod;

    .line 214
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "flushCookieStore"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->flushCookieStoreMethod:Lorg/xwalk/core/ReflectMethod;

    .line 234
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "allowFileSchemeCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 261
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAcceptFileSchemeCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorTypes:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorParams:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkCookieManager;->reflectionInit()V

    .line 33
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->acceptCookieMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public allowFileSchemeCookies()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 231
    goto :goto_0
.end method

.method public flushCookieStore()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->flushCookieStoreMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->getCookieStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCookies()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->hasCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 173
    goto :goto_0
.end method

.method reflectionInit()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 265
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 267
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 268
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 269
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 322
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 275
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 276
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 277
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 279
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 281
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 283
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkCookieManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 287
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 288
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkCookieManagerBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 293
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "setAcceptCookieSuper"

    new-array v9, v13, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 302
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->acceptCookieMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "acceptCookieSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 304
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->setCookieStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "setCookieSuper"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v13

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 306
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->getCookieStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "getCookieSuper"

    new-array v9, v13, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 308
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->removeSessionCookieMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "removeSessionCookieSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 310
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->removeAllCookieMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "removeAllCookieSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 312
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->hasCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "hasCookiesSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 314
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->removeExpiredCookieMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "removeExpiredCookieSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 316
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->flushCookieStoreMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "flushCookieStoreSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 318
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "allowFileSchemeCookiesSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 320
    iget-object v6, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkCookieManager;->bridge:Ljava/lang/Object;

    const-string v8, "setAcceptFileSchemeCookiesSuper"

    new-array v9, v13, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public removeAllCookie()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->removeAllCookieMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeExpiredCookie()V
    .locals 3

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->removeExpiredCookieMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeSessionCookie()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->removeSessionCookieMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAcceptCookie(Z)V
    .locals 5
    .param p1, "accept"    # Z

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAcceptFileSchemeCookies(Z)V
    .locals 5
    .param p1, "accept"    # Z

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->setCookieStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkCookieManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
