.class public interface abstract Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canServeUri(Ljava/lang/String;Ljava/io/File;)Z
.end method

.method public abstract initialize(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract serveFile(Ljava/lang/String;Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;"
        }
    .end annotation
.end method
