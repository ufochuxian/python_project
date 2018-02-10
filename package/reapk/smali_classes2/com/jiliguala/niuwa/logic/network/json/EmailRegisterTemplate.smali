.class public Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ava:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public typ:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "typ"    # Ljava/lang/String;
    .param p4, "nick"    # Ljava/lang/String;
    .param p5, "ava"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;->u:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;->p:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;->typ:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;->nick:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;->ava:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static generator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;
    .locals 6
    .param p0, "u"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "typ"    # Ljava/lang/String;
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "ava"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, "template":Lcom/jiliguala/niuwa/logic/network/json/EmailRegisterTemplate;
    return-object v0
.end method
