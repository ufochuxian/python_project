.class public Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayRunnable"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
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
    .param p1, "ref"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    .line 1632
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1636
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1637
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getNextCourseIndex()I

    move-result v0

    .line 1638
    .local v0, "index":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1300(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)I

    move-result v1

    .line 1641
    .local v1, "size":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1400(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1642
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1652
    :cond_0
    if-ne v0, v1, :cond_1

    .line 1653
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->report(I)V

    .line 1656
    .end local v0    # "index":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method
