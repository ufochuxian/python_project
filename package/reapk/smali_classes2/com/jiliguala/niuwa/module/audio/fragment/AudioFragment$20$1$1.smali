.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3502(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)Z

    .line 2320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 2321
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1012

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(ILcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 2325
    :cond_0
    return-void
.end method
