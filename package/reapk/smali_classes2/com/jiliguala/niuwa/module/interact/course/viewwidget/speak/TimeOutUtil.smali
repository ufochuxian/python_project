.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/TimeOutUtil;
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

.method public static getMaxTime(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 12
    const/16 v1, 0x7d0

    .line 13
    .local v1, "time":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "strs":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit16 v2, v2, 0x258

    add-int/2addr v1, v2

    .line 17
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_0
    return v1
.end method
