.class public Lcom/jiliguala/niuwa/logic/m/a;
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

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "mTitle"    # Ljava/lang/String;
    .param p1, "mAbst"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mType"    # I
    .param p4, "toPlatform"    # I

    .prologue
    const/4 v6, 0x3

    const v2, 0x7f0904ed

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    packed-switch p3, :pswitch_data_0

    .line 69
    :pswitch_0
    const/4 p1, 0x0

    .end local p1    # "mAbst":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 14
    .restart local p1    # "mAbst":Ljava/lang/String;
    :pswitch_1
    if-ne p4, v2, :cond_1

    .line 15
    const-string v1, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u542c%s\u7684\u5355\u66f2\u300a%s\u300b\u6765\u78e8\u82f1\u8bed\u8033\u6735\uff01%s\uff08\u6765\u81ea@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5b9d\u5b9d\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p0, v2, v5

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_1
    const-string v1, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u542c%s\u7684\u5355\u66f2\u300a%s\u300b\u6765\u78e8\u82f1\u8bed\u8033\u6735\uff01"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 20
    :pswitch_2
    if-ne p4, v2, :cond_2

    .line 21
    const-string v1, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u770b\u300a%s\u300b\uff01%s\uff08\u6765\u81ea@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5b9d\u5b9d\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_2
    const-string v1, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u770b\u300a%s\u300b"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 26
    :pswitch_3
    if-ne p4, v2, :cond_3

    .line 27
    const-string v1, "%s %s\uff08\u5206\u4eab\u81ea @\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5c81\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_3
    const v1, 0x7f0904e8

    if-eq p4, v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 34
    :pswitch_4
    if-ne p4, v2, :cond_0

    .line 35
    const-string v1, "\u6211\u6b63\u5728\u7528@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a\uff0c\u5b9d\u8d1d\u82f1\u8bed\u542f\u8499\u795e\u5668\uff0c\u968f\u65f6\u968f\u5730\u521b\u9020\u82f1\u8bed\u6c1b\u56f4\uff0c\u5e2e\u52a9\u4e0d\u540c\u7a0b\u5ea6\u7684\u7238\u5988\u4eec\u8f7b\u677e\u5b8c\u6210\u5b9d\u8d1d\u7684\u82f1\u8bed\u542f\u8499\u3002\u4f60\u4e5f\u8bd5\u8bd5\u54df: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "http://a.app.qq.com/o/simple.jsp?pkgname=com.jiliguala.niuwa"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 40
    :pswitch_5
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "babyName":Ljava/lang/String;
    if-ne p4, v2, :cond_4

    .line 42
    const-string v1, "\u3010\u82f1\u8bed\u542f\u8499Get!\u3011\u6211\u548c%s\u5b66\u4e60\u4e86<%s>\u8bfe\u7a0b\uff01%s\uff08\u5206\u4eab\u81ea @\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5c81\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 44
    :cond_4
    const-string v1, "%s\u5b8c\u6210\u4e86\"%s\"\u8bfe\u7a0b!"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 47
    .end local v0    # "babyName":Ljava/lang/String;
    :pswitch_6
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v0

    .line 48
    .restart local v0    # "babyName":Ljava/lang/String;
    if-ne p4, v2, :cond_5

    .line 49
    const-string v1, "\u3010\u82f1\u8bed\u542f\u8499Get!\u3011\u6211\u548c%s\u5b66\u4e60\u4e86<%s>\u8bfe\u7a0b\uff01%s\uff08\u5206\u4eab\u81ea @\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5c81\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 51
    :cond_5
    const-string v1, "%s\u5728\u5b66\u4e60\"%s\"\u8bfe\u7a0b!"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 55
    .end local v0    # "babyName":Ljava/lang/String;
    :pswitch_7
    const v1, 0x7f0904e6

    if-ne p4, v1, :cond_6

    .line 56
    const-string v1, "\u63a8\u8350\u8bfe\u7a0b %s \uff01"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 57
    :cond_6
    if-ne p4, v2, :cond_7

    .line 58
    const-string v1, "\u63a8\u8350\u4f60\u548c\u5b9d\u8d1d\u4e00\u4e2a\u82f1\u8bed\u542f\u8499\u8bfe\u7a0b %s \uff01%s\uff08\u5206\u4eab\u81ea @\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5c81\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 60
    :cond_7
    const-string v1, "\u63a8\u8350\u4f60\u548c\u5b9d\u8d1d\u4e00\u4e2a\u82f1\u8bed\u542f\u8499\u8bfe\u7a0b %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 63
    :pswitch_8
    if-ne p4, v2, :cond_8

    .line 64
    const-string v1, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u8bfb\u5427!%s \u5206\u4eab\u81ea @\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5c81\u82f1\u8bed\u542f\u8499\uff09"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 66
    :cond_8
    const-string v1, "\u8d76\u5feb\u548c\u5b9d\u8d1d\u4e00\u8d77\u6765\u8bfb\u5427!%s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
