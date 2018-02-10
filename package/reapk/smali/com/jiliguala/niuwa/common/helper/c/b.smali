.class public Lcom/jiliguala/niuwa/common/helper/c/b;
.super Lcom/jiliguala/niuwa/common/helper/c/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 1
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/helper/c/f;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 13
    const v0, 0x7f0f00d7

    iput v0, p0, Lcom/jiliguala/niuwa/common/helper/c/b;->e:I

    .line 14
    const/16 v0, 0x68

    iput v0, p0, Lcom/jiliguala/niuwa/common/helper/c/b;->g:I

    .line 15
    return-void
.end method
