.class public Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;
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
    name = "WordData"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d44b9c7ad2fdba2L


# instance fields
.field public cn:Ljava/lang/String;

.field public en:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;->this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
