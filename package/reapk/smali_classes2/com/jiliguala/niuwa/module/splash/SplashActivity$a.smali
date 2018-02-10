.class Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/splash/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/splash/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 290
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 291
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .local v0, "activity":Lcom/jiliguala/niuwa/module/splash/SplashActivity;
    if-eqz v0, :cond_0

    .line 297
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const-string v1, "CONDITION_SPLASH_DELAY_OK"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->tryToStartMain(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$200(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$300(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
