.class public Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;
.super Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 44
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getViewActivity"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getViewContext"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 77
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadExtension"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 92
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onStart"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 107
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onResume"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 122
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onPause"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 137
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onStop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 152
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 175
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 23
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->reflectionInit()V

    .line 26
    return-void
.end method


# virtual methods
.method public getViewActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivitySuper()Landroid/app/Activity;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getViewActivitySuper()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->getViewActivity()Landroid/app/Activity;

    move-result-object v0

    .line 40
    .local v0, "ret":Landroid/app/Activity;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    .end local v0    # "ret":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextSuper()Landroid/content/Context;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public getViewContextSuper()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "ret":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    .end local v0    # "ret":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 3
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionSuper(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadExtensionSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->loadExtension(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultSuper(IILandroid/content/Intent;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroySuper()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDestroySuper()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onDestroy()V

    .line 150
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseSuper()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onPauseSuper()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onPause()V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeSuper()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onResumeSuper()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onResume()V

    .line 105
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartSuper()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStartSuper()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onStart()V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopSuper()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStopSuper()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onStop()V

    .line 135
    return-void
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 179
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 180
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getViewActivity"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 184
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getViewContext"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 186
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "loadExtension"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 188
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onStart"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 190
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onResume"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 192
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onPause"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 194
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onStop"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 196
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDestroy"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 198
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 200
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onNewIntent"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method
