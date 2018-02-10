.class public Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;

.field public mode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;->code:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/UpgradeWeChat;->mode:Ljava/lang/String;

    .line 15
    return-void
.end method
