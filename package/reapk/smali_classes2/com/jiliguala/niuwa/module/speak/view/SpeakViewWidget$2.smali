.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->startIndicatorAnim()V
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
    .line 166
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$000(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->i()V

    .line 176
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 170
    return-void
.end method
