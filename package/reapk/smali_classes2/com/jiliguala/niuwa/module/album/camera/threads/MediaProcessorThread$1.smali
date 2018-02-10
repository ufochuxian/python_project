.class Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;->manageDiretoryCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;->c:Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;

    iput-wide p2, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;->a:J

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;->a:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x337f9800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 390
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread$1;->b:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
