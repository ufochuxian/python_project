.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->changeCoverImageAnimation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->i()V

    .line 1642
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$9;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->i()V

    .line 1636
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1647
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1628
    return-void
.end method
