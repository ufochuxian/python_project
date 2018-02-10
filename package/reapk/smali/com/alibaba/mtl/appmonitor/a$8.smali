.class final Lcom/alibaba/mtl/appmonitor/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/mtl/appmonitor/g/f;

.field final synthetic d:Lcom/alibaba/mtl/appmonitor/g/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$8;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$8;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/a$8;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/a$8;->d:Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 291
    :try_start_0
    const-string v0, "AppMonitor"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[register]:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$8;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a$8;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a$8;->d:Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
