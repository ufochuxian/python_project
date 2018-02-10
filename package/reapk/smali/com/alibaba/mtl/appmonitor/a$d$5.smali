.class final Lcom/alibaba/mtl/appmonitor/a$d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/mtl/appmonitor/g/d;

.field final synthetic d:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->c:Lcom/alibaba/mtl/appmonitor/g/d;

    iput-wide p4, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1012
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->c:Lcom/alibaba/mtl/appmonitor/g/d;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/a$d$5;->d:D

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
