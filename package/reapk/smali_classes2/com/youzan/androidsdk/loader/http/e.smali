.class abstract Lcom/youzan/androidsdk/loader/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/loader/http/interfaces/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/loader/http/e$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method private a(ILjava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "authType"    # I
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-object p2

    .line 144
    :pswitch_0
    const-string v0, "access_token"

    invoke-static {}, Lcom/youzan/androidsdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :cond_0
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "User-agent"

    sget-object v1, Lcom/youzan/androidsdk/e/e;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Lcom/youzan/androidsdk/loader/http/b;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p8    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p9, "onUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p6, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TMODEL;>;"
    .local p8, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    iput-object p0, p8, Lcom/youzan/androidsdk/loader/http/b;->d:Lcom/youzan/androidsdk/loader/http/e;

    .line 75
    invoke-direct {p0, p6}, Lcom/youzan/androidsdk/loader/http/e;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/util/Map;)V

    .line 76
    invoke-virtual {p8}, Lcom/youzan/androidsdk/loader/http/b;->c()I

    move-result v1

    invoke-static {p3}, Lcom/youzan/androidsdk/e/d;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/youzan/androidsdk/e/d;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youzan/androidsdk/loader/http/e;->a(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    :cond_0
    invoke-static {p3}, Lcom/youzan/androidsdk/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p5, v0}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 83
    :goto_0
    invoke-virtual {p0, p7, p8, p1, p9}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/lang/Class;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Z)V

    .line 84
    return-void

    .line 81
    :cond_1
    invoke-static {p3}, Lcom/youzan/androidsdk/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/youzan/androidsdk/e/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Class;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Z)V
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/youzan/androidsdk/YouzanException;Lcom/youzan/androidsdk/loader/http/b;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "error"    # Lcom/youzan/androidsdk/YouzanException;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p5, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/youzan/androidsdk/YouzanException;",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "query":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    .local p6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TMODEL;>;"
    iget-object v5, p4, Lcom/youzan/androidsdk/loader/http/b;->a:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p4, Lcom/youzan/androidsdk/loader/http/b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 94
    iget-object v5, p4, Lcom/youzan/androidsdk/loader/http/b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youzan/androidsdk/loader/http/interfaces/d;

    .line 95
    .local v3, "interceptor":Lcom/youzan/androidsdk/loader/http/interfaces/d;
    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v3, p1}, Lcom/youzan/androidsdk/loader/http/interfaces/d;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    .end local v3    # "interceptor":Lcom/youzan/androidsdk/loader/http/interfaces/d;
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iput-object p1, p4, Lcom/youzan/androidsdk/loader/http/b;->c:Ljava/lang/String;

    .line 107
    iput-object p2, p4, Lcom/youzan/androidsdk/loader/http/b;->b:Ljava/util/Map;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "data":Ljava/lang/Object;, "TMODEL;"
    if-nez p3, :cond_3

    .line 113
    :try_start_0
    invoke-virtual {p4, p1}, Lcom/youzan/androidsdk/loader/http/b;->b(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/youzan/androidsdk/YouzanException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 120
    .end local v0    # "data":Ljava/lang/Object;, "TMODEL;"
    :cond_3
    :goto_1
    new-instance v4, Lcom/youzan/androidsdk/loader/http/e$a;

    invoke-direct {v4, p4, v0, p3}, Lcom/youzan/androidsdk/loader/http/e$a;-><init>(Lcom/youzan/androidsdk/loader/http/b;Ljava/lang/Object;Lcom/youzan/androidsdk/YouzanException;)V

    .line 121
    .local v4, "runner":Lcom/youzan/androidsdk/loader/http/e$a;, "Lcom/youzan/androidsdk/loader/http/e$a<TMODEL;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_5

    .line 122
    invoke-virtual {v4}, Lcom/youzan/androidsdk/loader/http/e$a;->run()V

    goto :goto_0

    .line 114
    .end local v4    # "runner":Lcom/youzan/androidsdk/loader/http/e$a;, "Lcom/youzan/androidsdk/loader/http/e$a<TMODEL;>;"
    .restart local v0    # "data":Ljava/lang/Object;, "TMODEL;"
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e1":Lcom/youzan/androidsdk/YouzanException;
    move-object p3, v1

    .line 118
    goto :goto_1

    .line 116
    .end local v1    # "e1":Lcom/youzan/androidsdk/YouzanException;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance p3, Lcom/youzan/androidsdk/YouzanException;

    .end local p3    # "error":Lcom/youzan/androidsdk/YouzanException;
    invoke-direct {p3, v2}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/Throwable;)V

    .restart local p3    # "error":Lcom/youzan/androidsdk/YouzanException;
    :goto_2
    goto :goto_1

    :cond_4
    new-instance p3, Lcom/youzan/androidsdk/YouzanException;

    .end local p3    # "error":Lcom/youzan/androidsdk/YouzanException;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p3, v5}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    .end local v0    # "data":Ljava/lang/Object;, "TMODEL;"
    .end local v2    # "e2":Ljava/lang/Exception;
    .restart local v4    # "runner":Lcom/youzan/androidsdk/loader/http/e$a;, "Lcom/youzan/androidsdk/loader/http/e$a<TMODEL;>;"
    .restart local p3    # "error":Lcom/youzan/androidsdk/YouzanException;
    :cond_5
    if-eqz p5, :cond_1

    .line 124
    invoke-static {v4}, Lcom/youzan/androidsdk/loader/http/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
