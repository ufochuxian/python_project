.class public Lcom/jiliguala/niuwa/common/helper/c/k;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 12
    const v0, 0x7f0f025c

    const/16 v1, 0x6d

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 13
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 17
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
