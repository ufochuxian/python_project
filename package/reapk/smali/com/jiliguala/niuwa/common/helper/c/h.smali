.class public Lcom/jiliguala/niuwa/common/helper/c/h;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 13
    const v0, 0x7f0f00da

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 14
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
