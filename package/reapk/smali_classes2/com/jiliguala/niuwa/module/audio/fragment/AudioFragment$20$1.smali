.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$20$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2340
    return-void
.end method
