.class public abstract Lcom/jiliguala/niuwa/logic/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/b;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/b;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/g/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/g/b;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/g/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
