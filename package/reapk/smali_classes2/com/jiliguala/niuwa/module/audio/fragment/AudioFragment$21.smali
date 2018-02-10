.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreToolsDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2462
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2465
    if-eqz p2, :cond_2

    .line 2469
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2470
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/q/a;->a(Z)V

    .line 2471
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 2482
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 2483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2491
    :cond_1
    return-void

    .line 2477
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2478
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/q/a;->a(Z)V

    .line 2479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$21;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    goto :goto_0
.end method
