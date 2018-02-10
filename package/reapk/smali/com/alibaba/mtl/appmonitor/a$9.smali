.class final Lcom/alibaba/mtl/appmonitor/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:D

.field final synthetic e:D

.field final synthetic f:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$9;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/a$9;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/mtl/appmonitor/a$9;->d:D

    iput-wide p6, p0, Lcom/alibaba/mtl/appmonitor/a$9;->e:D

    iput-wide p8, p0, Lcom/alibaba/mtl/appmonitor/a$9;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 365
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a$9;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/a$9;->d:D

    iget-wide v6, p0, Lcom/alibaba/mtl/appmonitor/a$9;->e:D

    iget-wide v8, p0, Lcom/alibaba/mtl/appmonitor/a$9;->f:D

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/mtl/appmonitor/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
