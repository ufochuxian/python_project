.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x687d6323945cc04dL


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)V
    .locals 2
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 335
    const-string v0, "User-Agent"

    const-string v1, "MediaControl/1.0"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method
