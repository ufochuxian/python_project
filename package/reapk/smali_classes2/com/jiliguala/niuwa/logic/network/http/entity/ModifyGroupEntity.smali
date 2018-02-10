.class public Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6dd49b54cfd41dc1L


# instance fields
.field public _id:Ljava/lang/String;

.field public agech:Ljava/lang/String;

.field public ava:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public verifycode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "agech"    # Ljava/lang/String;
    .param p5, "ava"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->_id:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->title:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->desc:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->agech:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->ava:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "agech"    # Ljava/lang/String;
    .param p5, "ava"    # Ljava/lang/String;
    .param p6, "verifycode"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->_id:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->title:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->desc:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->agech:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->ava:Ljava/lang/String;

    .line 25
    iput-boolean p6, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/ModifyGroupEntity;->verifycode:Z

    .line 26
    return-void
.end method
