.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initUI(Landroid/view/View;)V
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
    .line 1225
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1230
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v0

    .line 1231
    .local v0, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v1

    .line 1234
    .local v1, "width":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "#FFFB992D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;IZ)V

    .line 1235
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "#FFFB992D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;IZ)V

    .line 1237
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$5;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
