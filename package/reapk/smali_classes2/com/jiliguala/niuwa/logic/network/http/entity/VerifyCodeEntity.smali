.class public Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d4fc5c358e91505L


# instance fields
.field public code:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;->target:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;->code:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;->p:Ljava/lang/String;

    .line 18
    return-void
.end method
