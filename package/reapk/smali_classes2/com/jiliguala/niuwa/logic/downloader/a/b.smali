.class public final Lcom/jiliguala/niuwa/logic/downloader/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/downloader/a/b$b;,
        Lcom/jiliguala/niuwa/logic/downloader/a/b$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x20

.field private static b:Lcom/jiliguala/niuwa/logic/downloader/a/b;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/downloader/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/jiliguala/niuwa/logic/downloader/a/a;


# instance fields
.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->f:Landroid/content/Context;

    .line 67
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->e:Ljava/util/concurrent/ExecutorService;

    .line 68
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->c:Ljava/util/Hashtable;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/downloader/a/b;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/downloader/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    .line 76
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Lcom/jiliguala/niuwa/logic/downloader/a/a;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    .line 87
    .local v0, "task":Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a(Z)V

    .line 89
    .end local v0    # "task":Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .prologue
    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;Lcom/jiliguala/niuwa/logic/downloader/a/b$1;)V

    .line 81
    .local v0, "dlPrepare":Lcom/jiliguala/niuwa/logic/downloader/a/b$a;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/a/b;->d:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->d(Ljava/lang/String;)V

    .line 100
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;>;"
    :cond_0
    return-void
.end method
