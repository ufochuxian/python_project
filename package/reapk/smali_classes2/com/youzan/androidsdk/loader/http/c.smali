.class final Lcom/youzan/androidsdk/loader/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/loader/http/c$a;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "authType"    # I
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 37
    .end local p1    # "method":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 33
    .restart local p1    # "method":Ljava/lang/String;
    :pswitch_0
    invoke-static {p1}, Lcom/youzan/androidsdk/loader/http/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
