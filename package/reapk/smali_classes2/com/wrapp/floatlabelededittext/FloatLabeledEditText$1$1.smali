.class Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;


# direct methods
.method constructor <init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    iget-object v0, v0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    iget-boolean v0, v0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    iget-object v0, v0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1$1;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    iget-boolean v0, v0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;->a:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 180
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
