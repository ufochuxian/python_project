.class Lcom/jiliguala/niuwa/logic/download/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/download/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/download/b;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/download/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/download/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/download/b;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/download/b$1;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/download/c;)V
    .locals 0
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;

    .prologue
    .line 191
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/download/c;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$1;->a:Lcom/jiliguala/niuwa/logic/download/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;I)V

    .line 208
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/logic/download/c;)V
    .locals 2
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$1;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$1;->a:Lcom/jiliguala/niuwa/logic/download/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b$1;->a:Lcom/jiliguala/niuwa/logic/download/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/b;I)V

    .line 203
    return-void
.end method

.method public c(Lcom/jiliguala/niuwa/logic/download/c;)V
    .locals 0
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;

    .prologue
    .line 195
    return-void
.end method
