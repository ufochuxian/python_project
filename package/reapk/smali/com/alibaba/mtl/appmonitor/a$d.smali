.class public Lcom/alibaba/mtl/appmonitor/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    .line 975
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
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 840
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    :goto_0
    return-void

    .line 843
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$d$1;-><init>(I)V

    .line 853
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
    .line 989
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V

    .line 990
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p3, "value"    # D

    .prologue
    .line 1005
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a$d$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V

    .line 1018
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p3, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    .line 1074
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1077
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$d$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 1087
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 908
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 911
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a$d$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionNames"    # [Ljava/lang/String;
    .param p3, "dimensionValues"    # [Ljava/lang/String;
    .param p4, "measureNames"    # [Ljava/lang/String;
    .param p5, "measureValues"    # [Ljava/lang/String;

    .prologue
    .line 1033
    const-string v0, "AppMonitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[commit from jni]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    const/4 v0, 0x0

    .line 1035
    const/4 v1, 0x0

    .line 1036
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_4

    .line 1037
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/d;->a()Lcom/alibaba/mtl/appmonitor/g/d;

    move-result-object v2

    .line 1038
    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_0

    .line 1039
    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 1042
    :goto_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    array-length v0, p4

    array-length v2, p5

    if-ne v0, v2, :cond_3

    .line 1043
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/h;->a()Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v1

    .line 1044
    const/4 v0, 0x0

    :goto_2
    array-length v2, p5

    if-ge v0, v2, :cond_2

    .line 1045
    const-wide/16 v2, 0x0

    .line 1046
    aget-object v5, p5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1048
    :try_start_0
    aget-object v5, p5, v0

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1053
    :cond_1
    :goto_3
    aget-object v5, p4, v0

    invoke-virtual {v1, v5, v2, v3}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/g/h;

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1049
    :catch_0
    move-exception v5

    .line 1050
    const-string v5, "AppMonitor"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "measure\'s value cannot convert to double. measurevalue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p5, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    .line 1058
    :goto_4
    invoke-static {p0, p1, v4, v0}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 1059
    return-void

    .line 1056
    :cond_3
    const-string v0, "AppMonitor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "measure is null ,or lenght not match"

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_4

    :cond_4
    move-object v4, v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 886
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    if-nez v1, :cond_0

    .line 895
    :goto_0
    return v0

    .line 891
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/d;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v1

    .line 893
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 861
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$d$2;-><init>(I)V

    .line 874
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 937
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a$d$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
