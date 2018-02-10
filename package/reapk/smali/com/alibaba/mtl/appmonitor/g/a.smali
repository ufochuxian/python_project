.class public Lcom/alibaba/mtl/appmonitor/g/a;
.super Lcom/alibaba/mtl/appmonitor/g/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureSet"    # Lcom/alibaba/mtl/appmonitor/g/f;

    .prologue
    .line 8
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/g/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 9
    return-void
.end method
