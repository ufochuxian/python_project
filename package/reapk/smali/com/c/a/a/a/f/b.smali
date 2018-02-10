.class public Lcom/c/a/a/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "actionId"    # I

    .prologue
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow:id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "actionName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 26
    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    const-string v0, "ACTION_DOWN"

    .line 12
    goto :goto_0

    .line 14
    :pswitch_1
    const-string v0, "ACTION_MOVE"

    .line 15
    goto :goto_0

    .line 17
    :pswitch_2
    const-string v0, "ACTION_UP"

    .line 18
    goto :goto_0

    .line 20
    :pswitch_3
    const-string v0, "ACTION_CANCEL"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_4
    const-string v0, "ACTION_OUTSIDE"

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
