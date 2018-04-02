.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;
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
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2670
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 2671
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2002(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;I)I

    .line 2682
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 2684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2689
    :cond_0
    return-void

    .line 2682
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
