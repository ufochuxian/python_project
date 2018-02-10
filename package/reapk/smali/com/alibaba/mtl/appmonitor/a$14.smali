.class final Lcom/alibaba/mtl/appmonitor/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a;->o()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1358
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/d;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->j()V

    .line 1362
    :try_start_1
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/d;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1363
    :catch_1
    move-exception v0

    goto :goto_0
.end method
