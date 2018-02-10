.class public Lcom/alibaba/mtl/appmonitor/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 236
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->setStatisticsInterval(I)V

    .line 237
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/b;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 238
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->i()V

    .line 284
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    :cond_2
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "commitSuccess module:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->j()V

    .line 288
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_3
    :try_start_1
    const-string v0, "log discard !"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 322
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->i()V

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v1, "_status"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    :cond_2
    const-string v0, "AppMonitorDelegate"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "commitFail module:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " errorCode:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "errorMsg:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->j()V

    .line 336
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    :cond_3
    :try_start_1
    const-string v0, "log discard !"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 244
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 245
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method
