.class Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 322
    iput-object p1, p0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;

    .line 323
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 334
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->attachXWalkCore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 341
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->dockXWalkCore()V

    .line 344
    :cond_0
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivateTask finished, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 346
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 347
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;->onActivateFailed()V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;->onActivateCompleted()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "XWalkLib"

    const-string v1, "ActivateTask started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 329
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;->onActivateStarted()V

    .line 330
    return-void
.end method
