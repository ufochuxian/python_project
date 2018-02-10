.class public Lcom/alibaba/sdk/android/feedback/util/o;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/b;->c()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "feedback"

    const-wide/16 v2, 0x0

    invoke-static {v0, p0, p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/a$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const-string v0, "UTWrapper"

    const-string v1, "\u7528\u6237\u81ea\u884c\u521d\u59cb\u5316ut_analytics"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/util/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/util/o;->a()V

    :cond_2
    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ut/mini/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ut/mini/b;->a(Landroid/app/Application;)V

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/b/b/c;

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Lcom/ut/mini/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ut/mini/b;->a(Lcom/ut/mini/b/b/a;)V

    goto :goto_0

    :cond_4
    const-string v0, "UTWrapper"

    const-string v1, "ut upload without securityguard"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/b/b/b;

    invoke-direct {v1, p0, p1}, Lcom/ut/mini/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ut/mini/b;->a(Lcom/ut/mini/b/b/a;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    new-instance v0, Lcom/ut/mini/d$b;

    const-string v1, "80001"

    invoke-direct {v0, v1}, Lcom/ut/mini/d$b;-><init>(Ljava/lang/String;)V

    const-string v1, "model"

    const-string v2, "feedback"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    const-string v1, "version"

    const-string v2, "2.5.6"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/ut/mini/b;->b(Ljava/lang/String;)Lcom/ut/mini/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/d$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/h;->a(Ljava/util/Map;)V

    return-void
.end method
