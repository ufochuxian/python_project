.class Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V
    .locals 1
    .param p1, "videoChannelListFragment"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->access$300(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 509
    :cond_0
    return-void
.end method
