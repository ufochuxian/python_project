.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 121
    .local v4, "pos":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v5, v4}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$002(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;I)I

    .line 123
    if-nez v4, :cond_1

    .line 124
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 126
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v6, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    if-eqz v6, :cond_0

    .line 127
    move-object v0, v2

    check-cast v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    move-object v1, v0

    .line 128
    .local v1, "dailyFragment":Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->autoRefresh()V

    goto :goto_0

    .line 144
    .end local v1    # "dailyFragment":Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v4    # "pos":I
    :catch_0
    move-exception v5

    .line 146
    :goto_1
    return-void

    .line 132
    .restart local v4    # "pos":I
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)V

    .line 135
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 142
    :cond_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$200(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1$1;->b:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$000(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->access$300(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
