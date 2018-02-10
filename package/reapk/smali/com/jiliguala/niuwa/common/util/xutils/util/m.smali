.class public Lcom/jiliguala/niuwa/common/util/xutils/util/m;
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

.method public static a()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 12
    const-string v5, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    invoke-static {v5, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v3

    .line 13
    .local v3, "videoCurTimeRecord":I
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v0

    .line 14
    .local v0, "controlTimeByMinute":I
    mul-int/lit8 v1, v0, 0x3c

    .line 15
    .local v1, "controlTimeBySecond":I
    sub-int v2, v1, v3

    .line 16
    .local v2, "remaingTime":I
    if-gez v2, :cond_0

    .line 19
    :goto_0
    return v4

    :cond_0
    div-int/lit8 v4, v3, 0x3c

    sub-int v4, v0, v4

    goto :goto_0
.end method
