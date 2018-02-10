.class Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;


# direct methods
.method constructor <init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gotFocus"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0, p2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V

    .line 228
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 231
    :cond_0
    return-void
.end method
