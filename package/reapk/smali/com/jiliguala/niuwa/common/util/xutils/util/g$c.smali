.class Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/util/xutils/util/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)V
    .locals 1
    .param p1, "weakRef"    # Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
