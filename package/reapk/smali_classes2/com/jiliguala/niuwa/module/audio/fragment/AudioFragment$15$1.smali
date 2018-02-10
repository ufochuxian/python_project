.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/a/d;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;Lcom/nineoldandroids/a/d;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->a:Lcom/nineoldandroids/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 2118
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->a:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/a/d;->b(Lcom/nineoldandroids/a/a$a;)V

    .line 2113
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 2123
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 4
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/4 v3, 0x0

    .line 2104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;IZ)V

    .line 2107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15$1;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$15;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;IZ)V

    .line 2108
    return-void
.end method
