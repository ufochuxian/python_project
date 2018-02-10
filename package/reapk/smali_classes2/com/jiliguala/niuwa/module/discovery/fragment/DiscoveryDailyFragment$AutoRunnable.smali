.class public Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoRunnable"
.end annotation


# static fields
.field public static final DELAY_MILLIS:I = 0x1388


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$800(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$900(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$700(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 510
    .local v0, "currentItem":I
    add-int/lit8 v0, v0, 0x1

    .line 511
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$700(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 513
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$900(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    .end local v0    # "currentItem":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$802(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Z)Z

    .line 519
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$900(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$802(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Z)Z

    .line 524
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->this$0:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$900(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method
