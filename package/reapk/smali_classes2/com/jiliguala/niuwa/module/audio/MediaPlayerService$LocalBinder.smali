.class public Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalBinder"
.end annotation


# instance fields
.field private mSerivce:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;)V
    .locals 1
    .param p1, "service"    # Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 776
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;->mSerivce:Ljava/lang/ref/WeakReference;

    .line 777
    return-void
.end method


# virtual methods
.method public getService()Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;->mSerivce:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;->mSerivce:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    .line 783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
