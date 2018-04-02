.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openUpRecordUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 457
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$100(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0803da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onEndOfOpenRecordUI()V

    .line 452
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 462
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$3;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$100(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0803da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    return-void
.end method
