.class Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setShowHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;


# direct methods
.method constructor <init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    iput-boolean p2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 175
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;

    invoke-direct {v1, p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;-><init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 169
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    return-void
.end method
