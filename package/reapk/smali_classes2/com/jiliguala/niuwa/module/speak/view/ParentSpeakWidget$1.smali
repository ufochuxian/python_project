.class Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->startIndicatorAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$000(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$1;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$100(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->i()V

    .line 184
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 178
    return-void
.end method
