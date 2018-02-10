.class public Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;
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
    name = "Head"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4e8d9d242e1bbad4L


# instance fields
.field public cttl:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public doneusers:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconttl:Ljava/lang/String;

.field public oriprice:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Head;->this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
