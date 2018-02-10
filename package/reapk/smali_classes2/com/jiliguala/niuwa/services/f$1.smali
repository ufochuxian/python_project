.class Lcom/jiliguala/niuwa/services/f$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/f$a;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/jiliguala/niuwa/services/f;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/f;Lcom/jiliguala/niuwa/services/f$a;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/f;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/f$1;->c:Lcom/jiliguala/niuwa/services/f;

    iput-object p2, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iput-object p3, p0, Lcom/jiliguala/niuwa/services/f$1;->b:Ljava/io/File;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;->onUnZipSuccess(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->c:Lcom/jiliguala/niuwa/services/f;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->f(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;->onUnZipFail()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/f$1;->c:Lcom/jiliguala/niuwa/services/f;

    iget-object v0, v0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$1;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    .line 127
    return-void
.end method
