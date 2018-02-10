.class public Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoEntity;
.super Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5a33a9e1b2cf702eL


# instance fields
.field public grpshare:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoEntity;->gid:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "grpshare"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoBaseEntity;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoEntity;->gid:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/GroupInfoEntity;->grpshare:Z

    .line 17
    return-void
.end method
