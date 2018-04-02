.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
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
            "Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 1636
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1637
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 1638
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0xbb8

    const/16 v3, 0x1002

    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 1642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1668
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1671
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1647
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->removeMessages(I)V

    .line 1651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1657
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->removeMessages(I)V

    .line 1661
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1643
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
