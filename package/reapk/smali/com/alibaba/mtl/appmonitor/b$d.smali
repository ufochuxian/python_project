.class public Lcom/alibaba/mtl/appmonitor/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    .line 586
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/g;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)V

    return-object v0
.end method

.method public static a(I)V
    .locals 1
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 501
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->setStatisticsInterval(I)V

    .line 502
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/b;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 503
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V

    .line 598
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
    .locals 5
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p3, "value"    # D

    .prologue
    const/4 v4, 0x1

    .line 611
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->c()V

    .line 616
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    :cond_3
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent commit. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 620
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->d()V

    .line 621
    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/f;->b()Ljava/util/List;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 624
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/g/h;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/h;

    invoke-virtual {v0, v1, p3, p4}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v0

    .line 627
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p3, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    .line 647
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->c()V

    .line 652
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/g/d;->b()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-static {v1, p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    :cond_2
    const-string v0, "statEvent commit success"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent commit. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->d()V

    .line 660
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/h;Lcom/alibaba/mtl/appmonitor/g/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 652
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 663
    :cond_4
    :try_start_1
    const-string v0, "statEvent commit failed,log discard"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " ,. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent begin. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 509
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 510
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 554
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent end. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
