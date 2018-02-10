.class Lcom/jiliguala/niuwa/logic/download/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "DownloadThread"


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/download/b;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/download/b;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/b$b;->a:Lcom/jiliguala/niuwa/logic/download/b;

    .line 351
    const-string v0, "DownloadThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/download/b;Lcom/jiliguala/niuwa/logic/download/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/download/b;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/download/b$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b$b;-><init>(Lcom/jiliguala/niuwa/logic/download/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 362
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b$b;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/download/b;->b(Lcom/jiliguala/niuwa/logic/download/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b$b;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/download/b;->c(Lcom/jiliguala/niuwa/logic/download/b;)Lcom/jiliguala/niuwa/logic/download/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/download/b$c;->a()Lcom/jiliguala/niuwa/logic/download/c;

    move-result-object v0

    .line 364
    .local v0, "task":Lcom/jiliguala/niuwa/logic/download/c;
    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b$b;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/download/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 369
    .end local v0    # "task":Lcom/jiliguala/niuwa/logic/download/c;
    :cond_1
    return-void
.end method
