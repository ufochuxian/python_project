.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->createTextXAnimation(Landroid/view/View;Landroid/view/animation/Interpolator;J)Lcom/nineoldandroids/a/l;
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
    .line 1473
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1492
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 1493
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;->a:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1487
    invoke-virtual {p1}, Lcom/nineoldandroids/a/a;->i()V

    .line 1488
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1498
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$7;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    .line 1477
    return-void
.end method
