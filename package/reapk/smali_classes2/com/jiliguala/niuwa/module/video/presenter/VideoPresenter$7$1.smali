.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 1304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->art:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7$1;->a:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/l/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1305
    return-void
.end method
