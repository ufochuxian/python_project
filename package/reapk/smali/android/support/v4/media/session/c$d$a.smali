.class Landroid/support/v4/media/session/c$d$a;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/c$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/c$d;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mediaControllerImpl"    # Landroid/support/v4/media/session/c$d;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1891
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1892
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$d$a;->a:Ljava/lang/ref/WeakReference;

    .line 1893
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1897
    iget-object v1, p0, Landroid/support/v4/media/session/c$d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c$d;

    .line 1898
    .local v0, "mediaControllerImpl":Landroid/support/v4/media/session/c$d;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 1902
    invoke-static {p2, v1}, Landroid/support/v4/app/y;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1901
    invoke-static {v1}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c$d;->a(Landroid/support/v4/media/session/c$d;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/b;

    .line 1903
    invoke-static {v0}, Landroid/support/v4/media/session/c$d;->b(Landroid/support/v4/media/session/c$d;)V

    goto :goto_0
.end method
