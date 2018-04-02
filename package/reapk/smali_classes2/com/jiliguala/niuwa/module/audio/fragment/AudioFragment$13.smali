.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showSingleLoopDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onBackPressed()V

    .line 1844
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$13;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1845
    return-void
.end method
