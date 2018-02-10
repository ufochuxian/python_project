.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$500(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$2;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V

    .line 218
    return-void
.end method
