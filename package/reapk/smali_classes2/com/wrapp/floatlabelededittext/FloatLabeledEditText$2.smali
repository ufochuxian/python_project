.class Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 206
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V

    .line 211
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;->a:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V

    .line 212
    return-void

    :cond_0
    move v0, v2

    .line 210
    goto :goto_0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 220
    return-void
.end method
