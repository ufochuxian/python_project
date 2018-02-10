.class public Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b79e9382d07aac5L


# instance fields
.field public head:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;

.field public intro:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Intro;

.field public itemid:Ljava/lang/String;

.field public shouldpay:Ljava/lang/String;

.field public target:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;

.field public teacher:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Teacher;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Data;->this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
