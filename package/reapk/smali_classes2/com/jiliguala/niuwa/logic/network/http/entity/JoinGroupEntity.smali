.class public Lcom/jiliguala/niuwa/logic/network/http/entity/JoinGroupEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe098d44c505d07cL


# instance fields
.field public _id:Ljava/lang/String;

.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/JoinGroupEntity;->_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/JoinGroupEntity;->code:Ljava/lang/String;

    .line 17
    return-void
.end method
