.class public Lcom/jiliguala/niuwa/logic/l/d/e;
.super Lcom/jiliguala/niuwa/logic/l/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/l/a/a;)V
    .locals 1
    .param p1, "model"    # Lcom/jiliguala/niuwa/logic/l/a/a;

    .prologue
    .line 18
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/b/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/b/e;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/e;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/e;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)Lcom/jiliguala/niuwa/logic/l/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;

    .line 20
    return-void
.end method
