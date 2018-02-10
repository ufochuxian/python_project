.class final Lcom/alibaba/mtl/appmonitor/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/a;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1372
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/a$15;->a:Z

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$15;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/a$15;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/a$15;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1376
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    iget-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/a$15;->a:Z

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$15;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a$15;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a$15;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/d;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    return-void

    .line 1377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
