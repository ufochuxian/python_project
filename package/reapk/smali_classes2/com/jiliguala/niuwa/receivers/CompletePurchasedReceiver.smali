.class public Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;,
        Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "extra_key_purchased"

.field public static final c:Ljava/lang/String; = "extra_key_oid"


# instance fields
.field private d:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;

.field private e:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiliguala.niuwa.service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->d:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;)V
    .locals 0
    .param p1, "callBackExtra"    # Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->e:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;

    .line 29
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    iget-object v2, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->d:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->d:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;->onReceivedSuccessPayResult()V

    .line 36
    :cond_0
    const-string v2, "extra_key_purchased"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

    .line 37
    .local v1, "skuBridge":Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    const-string v2, "extra_key_oid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "oid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->e:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->e:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;

    invoke-interface {v2, v1, v0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;->onReceivedSuccessPayResult(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-void
.end method
