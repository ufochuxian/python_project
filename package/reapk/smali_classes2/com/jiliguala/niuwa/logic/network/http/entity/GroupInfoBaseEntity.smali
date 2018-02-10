.class public Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a33a9e1b2cf702eL


# instance fields
.field public gid:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;->gid:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;->gid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;->uid:Ljava/lang/String;

    .line 23
    return-void
.end method
