.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 343
    return-void
.end method

.method public onResponse(Lokhttp3/e;Lokhttp3/ac;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/e;
    .param p2, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlaySeekSucceed()V

    .line 351
    :cond_0
    return-void
.end method
