.class public Lcom/jiliguala/niuwa/logic/network/http/entity/QuitGroupEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x62eab3e736b6f819L


# instance fields
.field public _id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/QuitGroupEntity;->_id:Ljava/lang/String;

    .line 14
    return-void
.end method
