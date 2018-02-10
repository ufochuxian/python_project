.class public Lcom/alibaba/mtl/appmonitor/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 742
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 745
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$c$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$c$1;-><init>(I)V

    .line 755
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 810
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    :goto_0
    return-void

    .line 813
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$c$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$c$3;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 823
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

    .line 788
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    if-nez v1, :cond_0

    .line 797
    :goto_0
    return v0

    .line 793
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/d;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v1

    .line 795
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 763
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 766
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$c$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$c$2;-><init>(I)V

    .line 776
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
