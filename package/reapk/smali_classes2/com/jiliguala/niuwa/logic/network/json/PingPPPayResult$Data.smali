.class public Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->this$0:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
