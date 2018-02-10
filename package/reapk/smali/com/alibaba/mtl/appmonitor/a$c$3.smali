.class final Lcom/alibaba/mtl/appmonitor/a$c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a$c;->a(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 813
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 817
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/a$c$3;->c:D

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/d;->b(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
