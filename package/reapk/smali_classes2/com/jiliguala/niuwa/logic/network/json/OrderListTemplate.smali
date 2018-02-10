.class public Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->code:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->data:Ljava/util/List;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->data:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->code:I

    .line 31
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->data:Ljava/util/List;

    .line 39
    return-void
.end method
