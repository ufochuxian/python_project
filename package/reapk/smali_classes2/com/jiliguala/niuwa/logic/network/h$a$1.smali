.class Lcom/jiliguala/niuwa/logic/network/h$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/network/h$a;->a(Lretrofit2/Call;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/h$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/network/h$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/h$a;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a:Lcom/jiliguala/niuwa/logic/network/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/h;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, "currentTime":J
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/h;->b()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 124
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lrx/e;
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a:Lcom/jiliguala/niuwa/logic/network/h$a;

    invoke-static {v5, p1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Lcom/jiliguala/niuwa/logic/network/h$a;Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v4

    .line 75
    .local v4, "retrofitException":Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 76
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 77
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->code:I

    sparse-switch v5, :sswitch_data_0

    .line 105
    :goto_0
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a:Lcom/jiliguala/niuwa/logic/network/h$a;

    invoke-static {v5, v1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Lcom/jiliguala/niuwa/logic/network/h$a;Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a:Lcom/jiliguala/niuwa/logic/network/h$a;

    invoke-static {v5, p1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Lcom/jiliguala/niuwa/logic/network/h$a;Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v4

    .line 115
    invoke-static {v4}, Lrx/e;->a(Ljava/lang/Throwable;)Lrx/e;

    move-result-object v5

    return-object v5

    .line 81
    :sswitch_0
    const-string v5, ""

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v7, 0x999

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v7, 0x1013

    invoke-direct {v6, v7}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v5, ""

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    .line 90
    const-string v1, ""

    .line 91
    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v5, 0x1024

    invoke-direct {v2, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    .line 92
    .local v2, "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;->a(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "event":Lcom/jiliguala/niuwa/logic/b/a/a;
    :sswitch_3
    const-string v5, ""

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    .line 97
    const-string v1, ""

    .line 98
    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v5, 0x1035

    invoke-direct {v3, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    .line 99
    .local v3, "event1":Lcom/jiliguala/niuwa/logic/b/a/a;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;->a(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x8f -> :sswitch_1
        0xe6 -> :sswitch_2
        0x11d -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/h$a$1;->a(Ljava/lang/Throwable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
