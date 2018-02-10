.class public abstract Lcom/jiliguala/niuwa/watchers/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/watchers/a/b;


# static fields
.field protected static e:Ljava/lang/String;


# instance fields
.field protected f:Landroid/content/IntentFilter;

.field protected g:Landroid/content/BroadcastReceiver;

.field protected h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/watchers/a/a;->e:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/watchers/a/a;->h:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/watchers/a/a;->a()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->f:Landroid/content/IntentFilter;

    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/watchers/a/a;->b()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->g:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/content/IntentFilter;
.end method

.method protected abstract b()Landroid/content/BroadcastReceiver;
.end method

.method public c()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/a/a;->g:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/a/a;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/a/a;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/a/a;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method
