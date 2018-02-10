.class public Lcom/jiliguala/niuwa/common/util/xutils/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 21
    const-string v0, ""

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    const-string v0, "down"

    goto :goto_0

    .line 15
    :pswitch_1
    const-string v0, "move"

    goto :goto_0

    .line 17
    :pswitch_2
    const-string v0, "up"

    goto :goto_0

    .line 19
    :pswitch_3
    const-string v0, "cancel"

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
