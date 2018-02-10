.class Lcom/jiliguala/niuwa/logic/download/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/download/b;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/jiliguala/niuwa/logic/download/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/download/b;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    .line 381
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/download/c;
    .locals 4

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "task":Lcom/jiliguala/niuwa/logic/download/c;
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "task":Lcom/jiliguala/niuwa/logic/download/c;
    check-cast v1, Lcom/jiliguala/niuwa/logic/download/c;

    .restart local v1    # "task":Lcom/jiliguala/niuwa/logic/download/c;
    if-nez v1, :cond_1

    .line 393
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-object v1
.end method

.method public a(I)Lcom/jiliguala/niuwa/logic/download/c;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/download/b$c;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/download/c;

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/download/c;)V
    .locals 1
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/services/c;)Z
    .locals 1
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$c;->b:Ljava/util/Queue;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b$c;->a(I)Lcom/jiliguala/niuwa/logic/download/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
