.class Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$3;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
