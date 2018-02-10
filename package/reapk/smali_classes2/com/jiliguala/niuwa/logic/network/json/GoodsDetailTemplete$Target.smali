.class public Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;
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
    name = "Target"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c0cf5b944ecda51L


# instance fields
.field public alphabet:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;

.field public dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

.field public poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

.field public sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

.field public song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

.field public words:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->this$0:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasApphabet()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->alphabet:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Alphabet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDialog()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->dialog:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoster()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->poster:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Poster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSentence()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->sentence:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Sentence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSong()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->song:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Song;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWords()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Target;->words:Lcom/jiliguala/niuwa/logic/network/json/GoodsDetailTemplete$Word;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
