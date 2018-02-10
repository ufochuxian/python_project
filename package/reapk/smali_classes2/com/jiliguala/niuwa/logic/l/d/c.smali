.class public Lcom/jiliguala/niuwa/logic/l/d/c;
.super Lcom/jiliguala/niuwa/logic/l/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;->a()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/jiliguala/niuwa/logic/l/d/c;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 24
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/l/a/a;)V
    .locals 1
    .param p1, "model"    # Lcom/jiliguala/niuwa/logic/l/a/a;

    .prologue
    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/b/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/b/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/c;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/c;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 30
    return-void
.end method
