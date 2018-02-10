.class public Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6a10079c5c7f96b7L


# instance fields
.field public ava:Ljava/lang/String;

.field public bg:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "ava"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .param p4, "city"    # Ljava/lang/String;
    .param p5, "bg"    # Ljava/lang/String;
    .param p6, "desc"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->nick:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->ava:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->p:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->city:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->bg:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;->desc:Ljava/lang/String;

    .line 24
    return-void
.end method
