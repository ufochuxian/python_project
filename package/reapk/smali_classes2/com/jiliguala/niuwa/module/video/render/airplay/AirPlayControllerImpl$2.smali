.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/ServiceEvent;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljavax/jmdns/ServiceEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->a:Ljavax/jmdns/ServiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$300(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$300(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$300(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdateMirrorIcon()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$200(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljavax/jmdns/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->a:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->a:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v2, v4, v5}, Ljavax/jmdns/a;->b(Ljava/lang/String;Ljava/lang/String;J)V

    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;->b:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$400(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method
