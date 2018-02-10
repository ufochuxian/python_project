.class public Lcom/alibaba/mtl/appmonitor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 426
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$a$1;-><init>(I)V

    .line 440
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a$a$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 556
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$a$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a$a$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 474
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    if-nez v1, :cond_0

    .line 483
    :goto_0
    return v0

    .line 479
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/d;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 448
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$a$2;-><init>(I)V

    .line 462
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$a$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/a$a$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
