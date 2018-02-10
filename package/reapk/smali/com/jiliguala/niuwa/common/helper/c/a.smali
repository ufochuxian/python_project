.class public Lcom/jiliguala/niuwa/common/helper/c/a;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 14
    const v0, 0x7f0f00d6

    const/16 v1, 0x69

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 15
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
