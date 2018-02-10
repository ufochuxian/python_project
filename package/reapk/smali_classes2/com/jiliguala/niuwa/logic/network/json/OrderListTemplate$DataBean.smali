.class public Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;
    }
.end annotation


# instance fields
.field private cts:Ljava/lang/String;

.field private item:Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->cts:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public setCts(Ljava/lang/String;)V
    .locals 0
    .param p1, "cts"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->cts:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setItem(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;)V
    .locals 0
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->item:Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean$ItemBean;

    .line 58
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate$DataBean;->oid:Ljava/lang/String;

    .line 66
    return-void
.end method
