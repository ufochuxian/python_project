.class final Lcom/alibaba/mtl/appmonitor/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/mtl/appmonitor/g/f;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$7;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/a$7;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    iput-boolean p4, p0, Lcom/alibaba/mtl/appmonitor/a$7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 261
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a$7;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    iget-boolean v4, p0, Lcom/alibaba/mtl/appmonitor/a$7;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
