.class public Lcom/alibaba/mtl/appmonitor/h;
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

.method private static a(Lcom/alibaba/mtl/appmonitor/g;)V
    .locals 7

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/d;->a()Lcom/alibaba/mtl/appmonitor/g/d;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g/d;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    .locals 6
    .param p0, "transaction"    # Lcom/alibaba/mtl/appmonitor/g;
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    .line 15
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    if-eqz p0, :cond_0

    .line 21
    const-string v0, "TransactionDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent begin. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g;->a:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/h;->a(Lcom/alibaba/mtl/appmonitor/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    .locals 4
    .param p0, "transaction"    # Lcom/alibaba/mtl/appmonitor/g;
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-eqz p0, :cond_0

    .line 50
    const-string v0, "TransactionDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent end. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :cond_2
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/h;->a(Lcom/alibaba/mtl/appmonitor/g;)V

    .line 53
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
