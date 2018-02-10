.class public Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _id:Ljava/lang/String;

.field public agech:Ljava/lang/String;

.field public ava:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;
    .locals 1
    .param p0, "_id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "agech"    # Ljava/lang/String;
    .param p4, "ava"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;-><init>()V

    .line 16
    .local v0, "instance":Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;
    iput-object p0, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;->_id:Ljava/lang/String;

    .line 17
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;->title:Ljava/lang/String;

    .line 18
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;->desc:Ljava/lang/String;

    .line 19
    iput-object p3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;->agech:Ljava/lang/String;

    .line 20
    iput-object p4, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupModifyTemplate;->ava:Ljava/lang/String;

    .line 21
    return-object v0
.end method
