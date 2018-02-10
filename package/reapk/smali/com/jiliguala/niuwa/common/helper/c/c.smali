.class public abstract Lcom/jiliguala/niuwa/common/helper/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field a:Landroid/widget/EditText;

.field protected b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

.field c:Z

.field d:Z

.field protected e:I
    .annotation build Landroid/support/annotation/ai;
    .end annotation
.end field

.field f:Lcom/jiliguala/niuwa/common/helper/a/b;

.field g:I


# direct methods
.method constructor <init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 0
    .param p1, "errorHint"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param
    .param p2, "fieldId"    # I
    .param p3, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->e:I

    .line 30
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->f:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 31
    iput p2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->g:I

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .line 37
    .local v0, "wrapper":Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
    invoke-virtual {v0, p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setChildFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    .end local v0    # "wrapper":Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    :cond_1
    return-object p0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method abstract a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 86
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->f:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/common/helper/c/c;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z

    move-result v1

    .line 87
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->d:Z

    .line 89
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/helper/c/c;->b()V

    .line 91
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-virtual {v2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a()V

    .line 100
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 101
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-virtual {v2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b()V

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-virtual {v2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a()V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->f:Lcom/jiliguala/niuwa/common/helper/a/b;

    iget v3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->g:I

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->d:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(IZLjava/lang/Object;)V

    .line 107
    return-void

    .line 94
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->d:Z

    .line 95
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/helper/c/c;->a()V

    .line 97
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    iget v3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->e:I

    invoke-virtual {v2, v3}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHint(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-virtual {v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b()V

    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->c:Z

    .line 48
    if-eqz p2, :cond_3

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 50
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    invoke-virtual {v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a()V

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 59
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->d:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 61
    .local v0, "length":I
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    if-eqz v1, :cond_4

    .line 62
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    const v2, 0x7f060083

    invoke-virtual {v1, v2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHintColor(I)V

    .line 68
    .end local v0    # "length":I
    :cond_4
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->a:Landroid/widget/EditText;

    .line 69
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/helper/c/c;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 81
    return-void
.end method
