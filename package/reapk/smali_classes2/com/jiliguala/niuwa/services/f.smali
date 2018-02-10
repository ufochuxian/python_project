.class public Lcom/jiliguala/niuwa/services/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final e:Lcom/jiliguala/niuwa/services/f;


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/services/f$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/jiliguala/niuwa/services/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/f;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiliguala.niuwa.service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/services/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/f;->b:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/jiliguala/niuwa/services/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/services/f;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/services/f;->e:Lcom/jiliguala/niuwa/services/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    .line 41
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/f;->d:Lrx/i/b;

    .line 45
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/services/f;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/jiliguala/niuwa/services/f;->e:Lcom/jiliguala/niuwa/services/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V
    .locals 2
    .param p1, "unZipTaskId"    # Ljava/lang/String;
    .param p2, "unZipListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/services/f$a;

    .line 54
    .local v0, "unZipObject":Lcom/jiliguala/niuwa/services/f$a;
    iget-object v1, v0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/common/util/e/f$a;->a(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V

    .line 56
    .end local v0    # "unZipObject":Lcom/jiliguala/niuwa/services/f$a;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "unZipTaskId"    # Ljava/lang/String;
    .param p3, "fullPath"    # Ljava/lang/String;
    .param p4, "unZipListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;
    .param p5, "srcFile"    # Ljava/io/File;
    .param p6, "destFile"    # Ljava/io/File;
    .param p7, "prefix"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    .line 63
    new-instance v5, Lcom/jiliguala/niuwa/common/util/e/f$a;

    const/16 v1, 0x400

    invoke-direct {v5, v1, p4}, Lcom/jiliguala/niuwa/common/util/e/f$a;-><init>(ILcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V

    .line 64
    .local v5, "args":Lcom/jiliguala/niuwa/common/util/e/f$a;
    new-instance v0, Lcom/jiliguala/niuwa/services/f$a;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/services/f$a;-><init>(Lcom/jiliguala/niuwa/services/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/e/f$a;)V

    .line 66
    .local v0, "unZipObject":Lcom/jiliguala/niuwa/services/f$a;
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f;->d:Lrx/i/b;

    new-instance v2, Lcom/jiliguala/niuwa/services/f$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/services/f$3;-><init>(Lcom/jiliguala/niuwa/services/f;)V

    invoke-static {v2}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/services/f$2;

    invoke-direct {v3, p0, v0, p6, p5}, Lcom/jiliguala/niuwa/services/f$2;-><init>(Lcom/jiliguala/niuwa/services/f;Lcom/jiliguala/niuwa/services/f$a;Ljava/io/File;Ljava/io/File;)V

    .line 75
    invoke-virtual {v2, v3}, Lrx/e;->n(Lrx/c/p;)Lrx/e;

    move-result-object v2

    .line 98
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 99
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/services/f$1;

    invoke-direct {v3, p0, v0, p5}, Lcom/jiliguala/niuwa/services/f$1;-><init>(Lcom/jiliguala/niuwa/services/f;Lcom/jiliguala/niuwa/services/f$a;Ljava/io/File;)V

    .line 100
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 130
    .end local v0    # "unZipObject":Lcom/jiliguala/niuwa/services/f$a;
    .end local v5    # "args":Lcom/jiliguala/niuwa/common/util/e/f$a;
    :cond_0
    return-void
.end method
