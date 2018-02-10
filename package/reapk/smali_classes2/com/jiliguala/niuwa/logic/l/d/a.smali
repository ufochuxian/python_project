.class public Lcom/jiliguala/niuwa/logic/l/d/a;
.super Lcom/jiliguala/niuwa/logic/l/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;->a()V

    .line 17
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/l/a/a;)V
    .locals 1
    .param p1, "model"    # Lcom/jiliguala/niuwa/logic/l/a/a;

    .prologue
    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/b/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/a;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/a;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)Lcom/jiliguala/niuwa/logic/l/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 23
    return-void
.end method
