.class public Lorg/chromium/content/app/ChildProcessService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private final mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-direct {v0}, Lorg/chromium/content/app/ChildProcessServiceImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    return-void
.end method


# virtual methods
.method protected getServiceInfo(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessServiceImpl;->getServiceInfo(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected initializeParams(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessServiceImpl;->initializeParams(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->stopSelf()V

    .line 49
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessServiceImpl;->bind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/app/ChildProcessServiceImpl;->create(Landroid/content/Context;Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 39
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mChildProcessServiceImpl:Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0}, Lorg/chromium/content/app/ChildProcessServiceImpl;->destroy()V

    .line 40
    return-void
.end method
