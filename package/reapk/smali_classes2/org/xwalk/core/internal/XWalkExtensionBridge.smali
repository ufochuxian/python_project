.class public Lorg/xwalk/core/internal/XWalkExtensionBridge;
.super Lorg/xwalk/core/internal/XWalkExtensionInternal;
.source "SourceFile"


# instance fields
.field private broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 61
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 76
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 91
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 106
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 121
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 129
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 137
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 20
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "entryPoints"    # [Ljava/lang/String;
    .param p4, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 61
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 76
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 91
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 106
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 121
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 129
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 137
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 28
    iput-object p4, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 31
    return-void
.end method


# virtual methods
.method public broadcastMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageSuper(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public broadcastMessageSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->broadcastMessage(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onBinaryMessage(I[B)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 110
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageSuper(I[B)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onBinaryMessageSuper(I[B)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onBinaryMessage(I[B)V

    .line 119
    return-void
.end method

.method public onInstanceCreated(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedSuper(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onInstanceCreatedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 88
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceCreated(I)V

    .line 89
    return-void
.end method

.method public onInstanceDestroyed(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedSuper(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onInstanceDestroyedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 103
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceDestroyed(I)V

    .line 104
    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public postBinaryMessage(I[B)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 50
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageSuper(I[B)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public postBinaryMessageSuper(I[B)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->postBinaryMessage(I[B)V

    .line 59
    return-void
.end method

.method public postMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageSuper(ILjava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public postMessageSuper(ILjava/lang/String;)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->postMessage(ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 142
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "postMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 146
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "postBinaryMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, [B

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 148
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "broadcastMessage"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 150
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceCreated"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 152
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceDestroyed"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 154
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onBinaryMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, [B

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 156
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 158
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onSyncMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method
