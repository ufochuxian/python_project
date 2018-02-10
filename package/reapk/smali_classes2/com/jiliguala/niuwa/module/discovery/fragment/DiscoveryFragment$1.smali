.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$200(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method
