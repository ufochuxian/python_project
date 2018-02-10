.class public interface abstract Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/base/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/order/contact/OrderListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onLoadMoreFailed()V
.end method

.method public abstract onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V
.end method

.method public abstract onRefreshNewFailed()V
.end method

.method public abstract onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V
.end method
