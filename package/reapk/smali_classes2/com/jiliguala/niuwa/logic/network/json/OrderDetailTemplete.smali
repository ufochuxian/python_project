.class public Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;->code:I

    return v0
.end method

.method public getData()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;->code:I

    .line 23
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplete$DataBean;

    .line 31
    return-void
.end method
