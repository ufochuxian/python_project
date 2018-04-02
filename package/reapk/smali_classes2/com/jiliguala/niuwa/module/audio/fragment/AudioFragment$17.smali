.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onLyricLoadFailed()V
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
    .line 2166
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$17;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2172
    return-void
.end method
