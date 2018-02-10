.class Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v0, "index.html"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "index.htm"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
