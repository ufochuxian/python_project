.class public Lcom/jiliguala/niuwa/common/helper/c/j;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 15
    const v0, 0x7f0f015a

    const/16 v1, 0x6b

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 16
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/j;->b:Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    const-string v1, "\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHint(Ljava/lang/String;)V

    .line 26
    return-void
.end method
