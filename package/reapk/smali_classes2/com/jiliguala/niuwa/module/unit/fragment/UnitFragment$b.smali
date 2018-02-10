.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1772
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 1773
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .line 1779
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1780
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1781
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1500(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    .line 1783
    :cond_0
    return-void
.end method
