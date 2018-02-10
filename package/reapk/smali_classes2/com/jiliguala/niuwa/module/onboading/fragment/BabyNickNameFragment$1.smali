.class Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 139
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "str":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method
