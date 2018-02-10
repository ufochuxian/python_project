.class public Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f9be4f7367e1fb6L


# instance fields
.field amount:Ljava/lang/String;

.field channel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;->channel:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;->amount:Ljava/lang/String;

    .line 19
    return-void
.end method
