.class public Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;
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
    name = "Word"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6419cbeea2b5e40bL


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$WordData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;->this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;->data:Ljava/util/ArrayList;

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
