.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1543
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 1544
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->a:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1537
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 1538
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1548
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    .line 1526
    return-void
.end method
