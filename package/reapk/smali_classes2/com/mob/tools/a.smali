.class public Lcom/mob/tools/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static shellClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected activity:Landroid/app/Activity;

.field private contentView:Landroid/view/View;

.field private result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultReceiver:Lcom/mob/tools/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/a;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static registerExecutor(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/lang/Object;

    .prologue
    .line 40
    sget-object v2, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    sget-object v2, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    const-string v3, "registerExecutor"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    .local v0, "registerExecutor":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "registerExecutor":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0, p1}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static setShell(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "shellClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    sput-object p0, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method private showActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 236
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 237
    invoke-static {p1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->W()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 239
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    .end local v0    # "act":Landroid/app/Activity;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void

    .line 241
    .restart local v0    # "act":Landroid/app/Activity;
    :cond_1
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected disableScreenCapture()Z
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 62
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewByResName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-static {v2, p2}, Lcom/mob/tools/c/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewByResName(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/mob/tools/c/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/mob/tools/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public final finish()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mob/tools/a;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getParent()Lcom/mob/tools/a;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mob/tools/a;->resultReceiver:Lcom/mob/tools/a;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 167
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 186
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected onSetTheme(IZ)I
    .locals 0
    .param p1, "resid"    # I
    .param p2, "atLaunch"    # Z

    .prologue
    .line 58
    return p1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public requestFullScreen(Z)V
    .locals 3
    .param p1, "fullScreen"    # Z

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 303
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 308
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 311
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public requestLandscapeOrientation()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a;->setRequestedOrientation(I)V

    .line 296
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;I)V
    .locals 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    const-string v2, "requestPermissions"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestPortraitOrientation()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mob/tools/a;->setRequestedOrientation(I)V

    .line 292
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 266
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/a$2;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/a$2;-><init>(Lcom/mob/tools/a;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    .line 272
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 275
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/a$3;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/a$3;-><init>(Lcom/mob/tools/a;Ljava/lang/Runnable;)V

    invoke-static {v0, p2, p3, v1}, Lcom/mob/tools/c/o;->b(IJLandroid/os/Handler$Callback;)Z

    .line 281
    return-void
.end method

.method public sendResult()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mob/tools/a;->resultReceiver:Lcom/mob/tools/a;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mob/tools/a;->resultReceiver:Lcom/mob/tools/a;

    iget-object v1, p0, Lcom/mob/tools/a;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/a;->onResult(Ljava/util/HashMap;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mob/tools/a;->contentView:Landroid/view/View;

    .line 81
    return-void
.end method

.method public setContentViewLayoutResName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public final setResult(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/mob/tools/a;->result:Ljava/util/HashMap;

    .line 253
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/a;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V

    .line 194
    return-void
.end method

.method public showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "resultReceiver"    # Lcom/mob/tools/a;

    .prologue
    const/4 v12, 0x0

    .line 198
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/mob/tools/a;->resultReceiver:Lcom/mob/tools/a;

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, "launchTime":Ljava/lang/String;
    sget-object v7, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 203
    new-instance v3, Landroid/content/Intent;

    sget-object v7, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v3, "iExec":Landroid/content/Intent;
    :try_start_0
    sget-object v7, Lcom/mob/tools/a;->shellClass:Ljava/lang/Class;

    const-string v8, "registerExecutor"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 206
    .local v5, "registerExecutor":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 207
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v5    # "registerExecutor":Ljava/lang/reflect/Method;
    :goto_0
    const-string v7, "launch_time"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v7, "executor_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 221
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 223
    invoke-direct {p0, p1, v3}, Lcom/mob/tools/a;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 233
    :goto_1
    return-void

    .line 208
    :catch_0
    move-exception v6

    .line 209
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v3    # "iExec":Landroid/content/Intent;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/mob/tools/MobUIShell;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v3    # "iExec":Landroid/content/Intent;
    invoke-static {p0}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 225
    :cond_2
    move-object v2, v3

    .line 226
    .local v2, "finalIExec":Landroid/content/Intent;
    new-instance v7, Lcom/mob/tools/a$1;

    invoke-direct {v7, p0, p1, v2}, Lcom/mob/tools/a$1;-><init>(Lcom/mob/tools/a;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v12, v7}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
