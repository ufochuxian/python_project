.class public Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isB1MC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "B1MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isB2MC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "B2MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBXMC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
