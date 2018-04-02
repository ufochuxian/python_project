.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onLyricTxtLoadComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setLrcRows(Ljava/util/List;)V

    .line 2149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setAlphaEnable(Z)V

    .line 2150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->setVisibility(I)V

    .line 2151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$16;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2153
    return-void
.end method
