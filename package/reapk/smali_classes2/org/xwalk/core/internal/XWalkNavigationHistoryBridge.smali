.class public Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
.super Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
.source "SourceFile"


# instance fields
.field private canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

.field private navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>()V

    .line 16
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 50
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "size"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 72
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 94
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 116
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentItem"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 138
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoBack"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 160
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoForward"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 179
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "navigate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentIndex"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 220
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clear"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 26
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->reflectionInit()V

    .line 28
    return-void
.end method

.method private ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackSuper()Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackSuper()Z
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 130
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .line 135
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 132
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardSuper()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForwardSuper()Z
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 152
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .line 157
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 154
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearSuper()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearSuper()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 214
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexSuper()I

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentIndexSuper()I
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 193
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .line 198
    .local v0, "ret":I
    :goto_0
    return v0

    .line 195
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemSuper()Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_0
.end method

.method public getCurrentItemSuper()Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 108
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 112
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 113
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 113
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtSuper(I)Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_0
.end method

.method public getItemAtSuper(I)Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 86
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 90
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 91
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 91
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasItemAt(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtSuper(I)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasItemAtSuper(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 64
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .line 69
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 66
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 4
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateSuper(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public navigateSuper(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 1
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 224
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 225
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkNavigationHistory"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v8

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 230
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v4, "XWalkNavigationHistory$Direction"

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v9, v3, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 238
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "size"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 240
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "hasItemAt"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 242
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getItemAt"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 244
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCurrentItem"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 246
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "canGoBack"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 248
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "canGoForward"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 250
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "navigate"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v7, "XWalkNavigationHistory$Direction"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 252
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCurrentIndex"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 254
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "clear"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeSuper()I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public sizeSuper()I
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 42
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .line 47
    .local v0, "ret":I
    :goto_0
    return v0

    .line 44
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method
