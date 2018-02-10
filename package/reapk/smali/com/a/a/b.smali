.class Lcom/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.AmplitudeCallbacks"

.field private static final b:Ljava/lang/String; = "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

.field private static c:Lcom/a/a/d;


# instance fields
.field private d:Lcom/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/b;->c:Lcom/a/a/d;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/c;)V
    .locals 3
    .param p1, "clientInstance"    # Lcom/a/a/c;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    .line 15
    if-nez p1, :cond_0

    .line 16
    sget-object v0, Lcom/a/a/b;->c:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    .line 21
    invoke-virtual {p1}, Lcom/a/a/c;->f()V

    goto :goto_0
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/a/a/b;->c:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-virtual {p0}, Lcom/a/a/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/c;->i(J)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/a/a/b;->c:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-virtual {p0}, Lcom/a/a/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/c;->j(J)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outstate"    # Landroid/os/Bundle;

    .prologue
    .line 51
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    return-void
.end method
