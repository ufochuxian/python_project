.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 1
    .param p1, "audioFragment"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2633
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;->a:Ljava/lang/ref/WeakReference;

    .line 2634
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2639
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .local v0, "fragment":Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
    if-eqz v0, :cond_0

    .line 2640
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 2641
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 2642
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, p0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2644
    :cond_0
    return-void
.end method
