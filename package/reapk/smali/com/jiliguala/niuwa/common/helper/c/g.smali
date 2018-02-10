.class public Lcom/jiliguala/niuwa/common/helper/c/g;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 13
    const v0, 0x7f0f0260

    const/16 v1, 0x6e

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/g;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHintColor(I)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 18
    const/16 v0, 0x67

    invoke-interface {p2, v0}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
