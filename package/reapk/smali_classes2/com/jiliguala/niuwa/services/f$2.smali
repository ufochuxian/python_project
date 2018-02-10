.class Lcom/jiliguala/niuwa/services/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


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
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Integer;",
        "Lrx/e",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/f$a;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/jiliguala/niuwa/services/f;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/f;Lcom/jiliguala/niuwa/services/f$a;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/f;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/f$2;->d:Lcom/jiliguala/niuwa/services/f;

    iput-object p2, p0, Lcom/jiliguala/niuwa/services/f$2;->a:Lcom/jiliguala/niuwa/services/f$a;

    iput-object p3, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/jiliguala/niuwa/services/f$2;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lrx/e;
    .locals 4
    .param p1, "integer"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/e",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$2;->a:Lcom/jiliguala/niuwa/services/f$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    iput-object v2, v1, Lcom/jiliguala/niuwa/services/f$a;->h:Ljava/io/File;

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 94
    .end local v0    # "parent":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$2;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/jiliguala/niuwa/services/f$2;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/jiliguala/niuwa/services/f$2;->a:Lcom/jiliguala/niuwa/services/f$a;

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/e/f;->a(Ljava/io/File;Ljava/io/File;Lcom/jiliguala/niuwa/services/f$a;)Z

    .line 95
    const/4 v1, 0x0

    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/f$2;->a(Ljava/lang/Integer;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
