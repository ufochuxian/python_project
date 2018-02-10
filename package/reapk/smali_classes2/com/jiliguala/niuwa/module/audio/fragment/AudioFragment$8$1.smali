.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$8;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/View;)V

    .line 1522
    return-void
.end method
