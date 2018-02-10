.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->openPartOfRecordUIIfTranslateUp()V
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
    .line 542
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 558
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 4
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;->onEndOfShowPartOfRecordUI()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$6;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeVolumeIcon(D)V

    .line 553
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 563
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 545
    return-void
.end method
