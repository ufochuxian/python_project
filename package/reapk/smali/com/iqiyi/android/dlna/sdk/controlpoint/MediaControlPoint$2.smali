.class Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->StartQimoWebServer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$2;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 810
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 814
    const-string v2, "--port"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$2;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-static {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->access$1(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--dir"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    .line 819
    .local v0, "args":[Ljava/lang/String;
    invoke-static {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->main([Ljava/lang/String;)V

    .line 820
    return-void
.end method
