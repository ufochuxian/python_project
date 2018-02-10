.class public interface abstract Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANNEL_ALIPAY:Ljava/lang/String; = "alipay"

.field public static final CHANNEL_UPACP:Ljava/lang/String; = "upacp"

.field public static final CHANNEL_WECHAT:Ljava/lang/String; = "wx"


# virtual methods
.method public abstract enablePayButton()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;)V
.end method

.method public abstract onReceivedPayResultTimeout()V
.end method
