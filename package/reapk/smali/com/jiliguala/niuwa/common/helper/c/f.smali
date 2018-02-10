.class public Lcom/jiliguala/niuwa/common/helper/c/f;
.super Lcom/jiliguala/niuwa/common/helper/c/c;
.source "SourceFile"


# static fields
.field public static final h:I = 0x14


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 2
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 15
    const v0, 0x7f0f00d9

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1, p1}, Lcom/jiliguala/niuwa/common/helper/c/c;-><init>(IILcom/jiliguala/niuwa/common/helper/a/b;)V

    .line 16
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/helper/a/b;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 21
    .local v0, "length":I
    if-lez v0, :cond_0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 24
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
