.class public Lcom/mob/tools/MobUIShell;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mob/tools/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    .line 28
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "==============================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 29
    const-string v1, "2017-08-19"

    const-string v2, "-0"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "version":Ljava/lang/String;
    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobTools "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "==============================="

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "executor"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "launchTime":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/lang/Object;

    .prologue
    .line 41
    sget-object v0, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    check-cast p1, Lcom/mob/tools/a;

    .end local p1    # "executor":Ljava/lang/Object;
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method private a()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 66
    iget-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-nez v5, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ""

    .line 70
    .local v2, "launchTime":Ljava/lang/String;
    const-string v0, ""

    .line 72
    .local v0, "executorName":Ljava/lang/String;
    :try_start_0
    const-string v5, "launch_time"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v5, "executor_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    sget-object v5, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/a;

    iput-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    .line 80
    iget-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-nez v5, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "uriScheme":Ljava/lang/String;
    sget-object v5, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/a;

    iput-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    .line 83
    iget-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-nez v5, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getDefault()Lcom/mob/tools/a;

    move-result-object v5

    iput-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    .line 85
    iget-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-nez v5, :cond_0

    .line 86
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executor lost! launchTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", executorName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move v5, v6

    .line 96
    .end local v0    # "executorName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "launchTime":Ljava/lang/String;
    .end local v4    # "uriScheme":Ljava/lang/String;
    :goto_0
    return v5

    .line 74
    .restart local v0    # "executorName":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "launchTime":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move v5, v6

    .line 76
    goto :goto_0

    .line 93
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MobUIShell found executor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v6}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 94
    iget-object v5, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v5, p0}, Lcom/mob/tools/a;->setActivity(Landroid/app/Activity;)V

    .line 96
    .end local v0    # "executorName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "launchTime":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getDefault()Lcom/mob/tools/a;
    .locals 8

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 113
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    .line 112
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 114
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "defaultActivity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "defaultActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    invoke-static {v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "fa":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v5, v2, Lcom/mob/tools/a;

    if-eqz v5, :cond_1

    .line 123
    check-cast v2, Lcom/mob/tools/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "defaultActivity":Ljava/lang/String;
    .end local v2    # "fa":Ljava/lang/Object;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 130
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getExecutor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 103
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onCreate()V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 271
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v1, p1}, Lcom/mob/tools/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 274
    .end local v0    # "res":Z
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->sendResult()V

    .line 216
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 217
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onDestroy()V

    .line 219
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 234
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/a;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 279
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v1, p1}, Lcom/mob/tools/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 282
    .end local v0    # "res":Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 192
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onPause()V

    .line 194
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 256
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRestart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 208
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onRestart()V

    .line 210
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 184
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onResume()V

    .line 186
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 176
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onStart()V

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 200
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0}, Lcom/mob/tools/a;->onStop()V

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 203
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 134
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/mob/tools/MobUIShell;->setContentView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/a;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-nez p2, :cond_2

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/a;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public final setTheme(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 48
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 49
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.Thread.getStackTrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    add-int/lit8 v0, v0, 0x2

    .line 51
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 52
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.app.ActivityThread.performLaunchActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 53
    .local v1, "l":Z
    iget-object v3, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/a;

    invoke-virtual {v3, p1, v1}, Lcom/mob/tools/a;->onSetTheme(IZ)I

    move-result p1

    .line 54
    if-lez p1, :cond_0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 63
    .end local v0    # "i":I
    .end local v1    # "l":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v0    # "i":I
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1
.end method
