.class public Lcom/jiliguala/niuwa/module/game/GameUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBgColorByType(Ljava/lang/String;)I
    .locals 3
    .param p0, "typ"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f06007f

    .line 13
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 23
    :goto_1
    :pswitch_0
    return v0

    .line 13
    :sswitch_0
    const-string v2, "drag"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "tap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "speak"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "write"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 19
    :pswitch_1
    const v0, 0x7f0600e7

    goto :goto_1

    .line 21
    :pswitch_2
    const v0, 0x7f0600ff

    goto :goto_1

    .line 13
    nop

    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_1
        0x2f2d34 -> :sswitch_0
        0x688ffd2 -> :sswitch_2
        0x6c257df -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
