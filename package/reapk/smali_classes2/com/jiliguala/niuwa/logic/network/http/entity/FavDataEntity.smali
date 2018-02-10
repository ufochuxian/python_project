.class public Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x184d2a52fb4f21aeL


# instance fields
.field public _id:Ljava/lang/String;

.field public bid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;->_id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;->bid:Ljava/lang/String;

    .line 16
    return-void
.end method
